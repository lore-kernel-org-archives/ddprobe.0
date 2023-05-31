Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F29440C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 06:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3E4C4339B
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 06:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685513045;
	bh=eARCIWBgrmtCdxE8kHLdZlSlRQtcm9Y8TQFp/Q1RmLM=;
	h=To:Subject:From:Date:From;
	b=m9jN7zP/1meOud9SkGJuRhejeuRIgzVdA6poaocv8K/pQpeD8Es9Qa9LOxipUSgxN
	 /AYwiduxSjpsdv03WN4Ejw4LcM1V83MVRYfRKipubp+ACUIhHD4+2OfL/43Am1Cd//
	 SHeTfOe6ZkX9m0vqFKIya6l1O4LAuWAPF6D1RssqPAcBAd/kZnVHwCaBZJPW4TU4N3
	 MAqpVtMaN+nKev2V6eKO8mAk8qZb1Al+aq6OI+XdYsjGL5bPqrtFjiIqAuiMWKO0D4
	 OopX2Fixui8R2FLYMcCW44bTbcqxpsiWFhCNh32BQ+HMVJ5RTCN/Yaa8pGysPYZI72
	 mo6FjoejQr4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF82CC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 06:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551304577.16370.11655753988820327692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a13eaf0083143698c83906140bd3bc609d4d91bf578d867692322e547e095ab
Date: Wed, 31 May 2023 06:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685513045
