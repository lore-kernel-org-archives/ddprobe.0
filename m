Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC5617D4
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 03:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9320C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 03:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681874645;
	bh=vGf9LfSpADDK2HmIB+hBjI90pAEUFYByi/g5HxN5QCQ=;
	h=To:Subject:From:Date:From;
	b=pI85SVNTXJoqRuy0G1qi/FxLoHZ1K19pBEJvrw5d38BeB8cuc3dcg7JjnDqNOEDyx
	 Dbrvm4DbWix2PWtclMAbSOA1QLX+e5SoeMPv97fhfN3H+JZwW5dg6CIJWTvyPjT7e3
	 /3neUqItgd3lgEMBdDc5cFOWL8RFcyRJaeHqqITBwoSM3n80oQfR8RorhS3rAiuEeB
	 /X+lBtWNH0f2laZS+ZpPHJKX0tke2c/1lDPHxuq95xcD27tsQQNECUoc0TLKQCzCex
	 Z7kcdPA5g7OBRnWd45gmdiswHlelD2QMYjW+BG1MMwjkvv/SYuzh/vAKLybF6BccNU
	 bNkaR4dyqrQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84BDC77B76
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 03:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168187464581.19808.4239092773865158807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad40d5439b2858ada128c2174a4253fac2fc70917134a08deb952e6f08197dd0
Date: Wed, 19 Apr 2023 03:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681874645
