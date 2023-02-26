Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEC120EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E2EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677412565;
	bh=ApfcBjBqKOC727Y5HS7OBRmQC/wuX2Lys9E25maq+Jk=;
	h=To:Subject:From:Date:From;
	b=FhdFgMiJh2s/IDLCVCmLfXSMlmCDnmvz31cE965K7dzmA7o2ppUbugZ4pqi5Fg3As
	 KXoNYB483TXwryOExKXIw/LizgCBEiHxVDdpmFaDgrRDUv5pEktFX442h4BGCiMTWx
	 WQg0AkUofOe9vVqu5VZ/MxBvid/PWhwMxicUZbgZowjO15r6qv99qnkyQ03v6dbS1A
	 vbrHIPtSAC3fQSeT+F6NDnShz9LuXmrU167HblPhAxXSjazSieo3QQasnRWEhqiAt4
	 9XAO0Ex6UhbAWR42BrfVINhrd188kvGX3cDMijxXY6wkBXCd8UNFcCXhOkGRR0jkd4
	 87bqeSN5CjVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FD5C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741256575.11448.5467606707351399106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e191ea8cb08df82da0cfce0c6e20028fbbb1d0df573c9f182c31a6eb9d1d119
Date: Sun, 26 Feb 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677412565
