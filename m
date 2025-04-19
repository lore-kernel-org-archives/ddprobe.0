Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39687258A
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745021994; cv=none; b=nk+DDSGkYK1Sg6grF3pstqXftS3n6MA9Uca1tSRaQ5WHxSymn1HksMhOxv+iNzYQv/MCBfhfqm3GCllxYh6JAiFYrkm1qSVr1bE5ltXVa92uyREftz5uIeIllb8SWJZ2VMl6PyqUO77bKroMOHEvt+pInzxyMvRFd2HvD48DeTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745021994; c=relaxed/simple;
	bh=U6DRm/oW+3XZKyAT+4A5K4HuF9R8ys1PecevSwa+d4E=;
	h=To:Subject:From:Message-Id:Date; b=Neqqo1tlQD2cJRL7y7zsQl4vdUpe3BGMP7JPKUTvmKTcMyv7zJD7XsA80LynimC/idF4y7AzXdGxT0xvhUZq7HNBSjschkOln2rNKQgD4k5KYDcYYQXl3Jb8WwbttJHVF5SFgeloIMWjFpq3A/mpRpIDCioihVtmuFGvhVTwD9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZMPwrsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZMPwrsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE49C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745021993;
	bh=U6DRm/oW+3XZKyAT+4A5K4HuF9R8ys1PecevSwa+d4E=;
	h=To:Subject:From:Date:From;
	b=AZMPwrsD6AxAqW2dUABkJjTT0AdIMcSe32k56bRtLHSxpUKGh5aeZ2wMK3YeV2Tv3
	 YZgX968AbeG47mF+88KGhIro1gE5vHDU917i6GVhxH3I+n7zYRz8qQf2YOM65TDkE9
	 c1Dl1IuO9iatOC39ImSKSM5PFxklcAhUdvExxqHVAH5KK4N7zdQeVFx0dtZHbgTQr2
	 tcYD+0gEYlJ1FbS23y4QyDfVa5m3Y4AzEPLBwh3ZfWJ1B/FvAsnMwBj4iy6CV6uAP4
	 dLqX6aAlOxq2yHG0no35RRvccYlyz2BFCfaURWwQWa5mRfQjXBIr9hTxVr5X1bhM8q
	 zT7vzW0dROBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF68C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502199360.17883.8434883888186891838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140cd26820ea99b8bb45d40ebabcba06a596cf6776c485eae805fd96570caa57
Date: Sat, 19 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745021993
