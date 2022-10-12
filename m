Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BB8612F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AE0C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665618653;
	bh=RF7nXfTyOHdO8+VQXwEErhcyAXUxrDepslk+jEfujVI=;
	h=To:Subject:From:Date:From;
	b=KeeGf323tMenCIL5LMJIHc85cyZPaudhvpZVtH925H67mMYDwfPEr4RVhdIpmkM+B
	 YefZfy76dTtQ6//rJFW9CNU6FeRu/K5JuZR6N2qYuLvW+FiCK79vjMhaNAV5/rU8w4
	 AgBMJizIfNCq/rmmm6fjfhABTI1NAA2jqwQ76G3cPaWkDdwqeYxFxABUqKK40Dgwqf
	 By+CzzTWIE/Cl7q3zzZ+t9Sp+dvIFnzMJGau5b5jHfmTj4HKqZxlitfyf/LKbC4v/9
	 tsmNlazoX1gnFQUEUR2LE+n1I4q5iqBJo4nlC+t+HMejzACxnJf5gS3pEknoojTd1f
	 0IdeyVL9JNqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFBFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561865336.11749.3735843110001981126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41ff827acccdb83eed8b2baebcb403f42b57da676964f654d6b807b06acc24e
Date: Wed, 12 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665618653
