Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2576F189B83
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728247554; cv=none; b=C9VUsJ/nrC5YVDBXN7ey0Q8cVFzayKXqvmzG8jEDahwsdIeVRpEcB5mdq5rFHTpfsulDq+i7JLjYSGMJ3vkTTr6H8WWAlmbmbb2NWg8qwMSSM7U2jgzLdVFDh2sq9Y1jUhPHMOVEo/ApeojBV8BO4dTturGuilO7ZQaFO9vmL1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728247554; c=relaxed/simple;
	bh=n+0uAKARwK6yC3RD+/y3IAY1k9NnSfMMUu/3l7d+qEk=;
	h=To:Subject:From:Message-Id:Date; b=fO6pQwEq8jR0V5smuSeXhsbus/+ebV6BK1eDRxGonqGQBuV7MhSJLLHCWY2lC3qYLGtyqD4Y9MZIyMpRhZ/x0Axqrb+i0sCTM0Q2EEidU405Md5GiKQCm8f7F1EGEhmx0hHbLiMp0ZY+jNtzTGSsN/QAFxBIvM6gGTmqZ+hZEk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmoojR4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmoojR4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8BCC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728247553;
	bh=n+0uAKARwK6yC3RD+/y3IAY1k9NnSfMMUu/3l7d+qEk=;
	h=To:Subject:From:Date:From;
	b=DmoojR4WXolAnNitb5YYnefoXy+9MwZFeFnsyBNtWKFpTwHdv/m0U1D1qfdhRvoso
	 QNbz+Mtsmj166x+5Iv6BkZZJbERBAkDSZ9KmJntHoLJybvhZjyqFB4ye43457zKsQD
	 MkG45kleIPBAH+zsNSln9gZhf+UzynZs7NDUL0qcxrZ7lh8utUNdM+GWSWn7z+btSV
	 7f0+Kbg93jwVnqbBmfz0ucIqPoFXTe7Wr8ycKz3YOMCIGrYy+OawufunU9Z/fb0gD7
	 8whvn9K2AG7duManSe+88Bp3J4RX21HGnhcOu5HZILKYyS7hgomGHkE+ltXtPqxWbU
	 hsAuPBcmKgB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9ECFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824755358.25504.14240517213990254938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4cb10d780903270e05ebab67daf6b3ab5bf751e798b13d7843bebe63f49e34
Date: Sun, 06 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728247553
