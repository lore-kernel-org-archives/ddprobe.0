Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50588375
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEC3C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693118648;
	bh=XjFrr4HFSHfRmGBOdBdyZ17KIXrvWCZkc8OBnsNcMxA=;
	h=To:Subject:From:Date:From;
	b=Bnona5WUALimbst6cV0qiJ341buBvy4Vbn+R042y5fzc+D35janrmZfNOca07KtI2
	 1xLGEykZEZht6MgkIxzmhqvH+ek0a1FbAt3ucTqjvxVD5j3zXszJEzWzvEK7qk6UMv
	 FJuxeh1fxDoYVtmhhO78D+RwnTA7u9qCR5nO81RWz/nHhTTQ/G6YQBgT1MEUe/+ITL
	 JSOzmKuvNCIuOuyTP3cCuxx5DPqXw40u1FrCrpokLiFQiL1jGltA5FIDOvef4hQe9x
	 szJFrEBCy/ZA3EflbyeKs7AilaUNBznw8L4uR/WOb/CaI3LnabTLGkUu63apl5N7k7
	 x7CWxtGO6Ne9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81FC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169311864871.15683.7467389330243341763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af75e0aeb7af2ed1e1ce83748c289ab4a1b6efe4c1b2cdd424e3fd764c30baaf
Date: Sun, 27 Aug 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693118648
