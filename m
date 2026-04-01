Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0126326E711
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775014494; cv=none; b=Bh6qh0P2LpQCRVMkmj2bty+sq7aZKD5/fyQmxWcs5LDnUR4YZleRzNOqw8mWkPADYEeclBk5DhKAMd6Lhp5ycSbDVA98q5fweULXCOKKq23gL8ehXqiohupUxCCPG8wAHHyoudNZu3sl02a/IjNbpEFYPZOB+n+B/22Wwfw38Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775014494; c=relaxed/simple;
	bh=WIDr9ghgvUx7y4Bi11xXSdcNmJDfLnULN71+1/BAY+I=;
	h=To:Subject:From:Message-Id:Date; b=a0MWUDAuyUSYwu3hVtsC8pk2BmWsHfySwOY25TYUdkfg/n64LmKiw8t+CaOKnW753TBbUGD+afKpiu5jDKnMQSBmCGgAmRzefiFk6ii1uM19jrtuTN0hMQauXvLMr0dXt9M/ykMHU4H3SD8cYf2zyohQ6dbUn1ZBhY8EBKzz3FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnLCC/Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnLCC/Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9923C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775014493;
	bh=WIDr9ghgvUx7y4Bi11xXSdcNmJDfLnULN71+1/BAY+I=;
	h=To:Subject:From:Date:From;
	b=XnLCC/NmJTiiaZznKmF/m7PYAXLkuAoP2MCRF3iyRH9y+z1jrchybYY5YOFDPcgHI
	 YQt0JYka4XirugF+P4RQ9KbjkOEZl/eDPHXpLquR6aGvVa+G86085zeEtGU9NUzZvm
	 pOkTjIkejxKmKc+BhFrp+1yk59fAIx3rNiJl2MIXyRGtYmxQFNcF5TSkjgfQOfLPJv
	 gnIaEUfJUivicknLsGcBVoA5EDLYCaST+CAKP+CH+BCDVglSU3NY9PfXtBP4EirbNV
	 BZWLdtS2llAsFKgL16SUeWYgrvd9fBt8OV33s5cTgA/rl1WbfOiTmY8Yaz3NF6Vl31
	 UM//yluSThILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FA10F9318
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501449358.27046.2869335338349245684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02e0b0e27577d587eefb023232f106758f34092836a22d5590fe6860b77fde4
Date: Wed, 01 Apr 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775014493
