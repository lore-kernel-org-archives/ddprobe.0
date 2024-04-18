Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560F438F9A
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713424763; cv=none; b=SOVuydZutwPH5I0rFbpcsSqHlfSjiVj6VqEAXhKpvXYU79EiQvrEkNPe7OCU/yDX0u+eT2yFDQzCPcU6XglhhGvHge9E6ZHqwCSYOfnmcPOoLS9LXh7DcMcaYtFyc5kljz9WTNaZ6LlJSj8r7KRv5pSnqMqkuoYZzToq7r7E45U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713424763; c=relaxed/simple;
	bh=Oq0MrpVLAWQAicW3B4uam1zuyeCpuPnhqRRYyG8VWuM=;
	h=To:Subject:From:Message-Id:Date; b=i9zwtNKL2rpGNDTKki7Bd7gipWv5az/jeE9SkTlFRFgcAlx/zqF9VIEbgC1OJvk0DAu9GH5rVBth3u5Byyos/3cGgA4+5ZGTXpS93ya71AWtqF4X0tb0sS8WCjfgAVm2aPcQcOB92rcWALloxahzm5IypFzEgg3/o0pOur/LZL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W73S6q5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W73S6q5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4429C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713424762;
	bh=Oq0MrpVLAWQAicW3B4uam1zuyeCpuPnhqRRYyG8VWuM=;
	h=To:Subject:From:Date:From;
	b=W73S6q5PMTbeVz2zfZzSFCNk+TMubFW4sy/WGmkoiLwk4qNyy+6b+EKPp5preOw/p
	 kynhKkYl11I5MK4wAcY/QGylEp8gEj6lesBsrnIEzs3vNWc0WB4/6VNg36Nhb03euA
	 Uikw/4W1hva1Z7I5WCAtk3yg+8+JN23DQOeuwKc+vIyG4muqoD9VBgLgUk2FFZ1Bkn
	 GW2l/nV3LceAalBWCVe7bjEWPuco/vVQzzk1QF2uWPl4C5iFp3gb8CX8PZOhOfcED0
	 h0/gMoxdpXwtvTg5a/Fgi8RQzKs1BoguHZX1rn4BHaZIMGVAWEKLlEAUNW9LMDF65l
	 olGoe1QW3w/6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFC8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342476276.15532.13405546493683244336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9816fa69a3b89a8971373cb3ea3e727eb32289126830696b7292e8d02151779
Date: Thu, 18 Apr 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713424762
