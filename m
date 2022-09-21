Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92297C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B605C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663753853;
	bh=W2YqvtykzWqRS+855gnJz0ohQn+fwonb0JIq5ZTBFDk=;
	h=To:Subject:From:Date:From;
	b=iq5gHO6A9XmO++VzYvhPTDLGI6lC90xK6Df4JiKGJ65/Vsfuxp+VvtJS35V0x8+3b
	 8BadlsIe36Ely1xlZxaAH16qCAbn1I+RPEE2Dz1EHp2hiqScdRDpAj6+dOJfXFQ3t4
	 tw+XDxFtKgp6Loysy4ZilJBRnd9tnXstvH/qHix9HLeLLMsZUS9AT1VYeC8S4c2m9F
	 2hWozeg+lIX6tt126HxoNH5vasaO/eUQVV5ATRdaLmsusWAjwUkV5EQ4QDV6bUNwUI
	 shpVKTnJnHlk0cPeiFMq2hDlKy9fgF6FkqouxaRGdxT34AUxrfHQvad18SBBI0L27r
	 /m7vmdZ4j/MCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582C0C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375385334.28498.15976830073933810165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6515a1800c733d5f10d4f737314d1b905d49f8be3155779a797dd19fad8b1c
Date: Wed, 21 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663753853
