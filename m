Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94210A2A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 07:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6DEC433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 07:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687074008;
	bh=WiNbfQ7vVw4VGOLJII/pPzEX0ljVloOsPm0C2OC2RmE=;
	h=To:Subject:From:Date:From;
	b=XNnfO/NIQfSUdf/1MTz4V+AdqxcAxy+HDtaJ6EFLhmqHl7vMU0PnfKElg0G1X6by+
	 NfPsaW6LI7crfXumnfnJtfHMCQWbUKekn3ecM9vrWC8sZqdg8LMJXK6I9BHm/f8EQ2
	 Q8/zJTxHUm1gvhDvcM+VcBI+Idcp1RmoEJLfADnvzA28/QLnrGYfb/gi/9rPQoj3c4
	 vtN5x7lgfG4ElRDQjhF5bjD8Jfkob0qqMnHA0k72nGebOrk993SXhfD+iAss+w47ug
	 MxeZxl25jqxYV5pYGzJsfiwv8b/rFndDFglbVnfy3//4Zklpw1ghU3TV945Dr2lYM0
	 kA7TTRaWFXBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE044EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 07:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168707400866.31349.13484445915993855827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a045e523beb45b4a0d217c851da9d1aa63c105a921560bf772b66e45bb4f64df
Date: Sun, 18 Jun 2023 07:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687074008
