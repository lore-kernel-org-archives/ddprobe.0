Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EB239E6E4
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778424034; cv=none; b=ESq6URd34/riMTEpxCkyMBp0lHrDEMaua/Aenq06buRCeBoE1az8aFPk7RxkjRfPBZH1eFtUCA0+EMtl/KNhZs3XZK1wxGEZcLQKxdRHEMMSLNhEJhnRmlRCCso2wPbVE7K3VNxlg6m6mkJUEix/pUBZfLnSiUujCaDSQcoLTtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778424034; c=relaxed/simple;
	bh=pvcRI4R9Ztq3EQ/cIepQvLOODJoQKx5l2961hEPkIfE=;
	h=To:Subject:From:Message-Id:Date; b=YePt0B4GfSPvNAid5gC9lDRYKIL8JMcKsa5g4HiBcsyyl/t78Ml/+fifEi6oO/uQNXPKtsZlKKEg1VvbquLGFkawu4J387q1WLfEL5natEo2YsCKBw4SeLCSl2ZFEcNjDnMG1vdo1g6EyHJtPSmKYQEcB86qIcdbvfmhC+3tbUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHBSt1+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHBSt1+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C774BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778424033;
	bh=pvcRI4R9Ztq3EQ/cIepQvLOODJoQKx5l2961hEPkIfE=;
	h=To:Subject:From:Date:From;
	b=NHBSt1+Uze4v7UwDtbRsuhLw2k8Gg5XsLontazIxyTwpPDGptX7S9hghTP9pgdqtT
	 /OS/s/LRSd7Elew3rrjmvPuyjRkSM1bNH3XNdqAMx5YHv329O4bSvvLkC12YYgSvsx
	 yspPU4u7zhOwV/zLgwT9Wp+2Y/Q04Kli3KJzqaslS5Q42HZNe6D1ximwu3OsqhVP/0
	 +oC5dPBgXlisS+r76Va0AIJJNX4Vdf68Z9J7bHLAujaOP9P8Qlo+auboTutIS220W6
	 p2FkWyUDoXyDa/tgSDPBIeU8fCrCxybP9LJNVgfBWZiNV+CQ9s4Auhm+t3SDueJFZb
	 Aew8MRYJCTIrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4061CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842403372.19494.2664898539956465508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4693bf2578b71614ad6f3f94aa870371755cfd33abf6d28a94e871aad451348a
Date: Sun, 10 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778424033
