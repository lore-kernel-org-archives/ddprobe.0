Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEE9285CBC
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762463394; cv=none; b=GUlQAX8KYLjluGOVWZkojWpW2KQFfHr1ieXISAbm/iceIfbd3s8smQJfMJXgnvdYaZu5wWs6JCIpHLAciRpCuRuPshtg4IAZ0C50XZJd+VZDnU8DSiObM3whvS0/kE/nrYSGF0/nrdYyPFIOy74KHbLsvloahGI3ip8B2YG7DJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762463394; c=relaxed/simple;
	bh=fCnyYwH5XtbEMaILqa+oXZfJIBbHK5Xdxd0Y8GwLGUo=;
	h=To:Subject:From:Message-Id:Date; b=V1UAbRl7Vqd/GrjVkUbwkhaSvs1jjadLrZRMTE/4O56cHUv8jcehWjCK2zoNQRYK37U9Y7f1okrb1TJLg6VEGi6hPL6/y1jwhpCb34W0IPM/UOnaJVynE9k/V1XF0JkrKx5OTlut/QcYCWR2meHmhEL/ICTfUn/S30/MxvYn3pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o75Bhny8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o75Bhny8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF0C116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762463393;
	bh=fCnyYwH5XtbEMaILqa+oXZfJIBbHK5Xdxd0Y8GwLGUo=;
	h=To:Subject:From:Date:From;
	b=o75Bhny8Dc69sdmWoBVW7LKXWr81DHIFUv2WhXQgSDNt1eHhn5WnOs53lpIfhk3xd
	 C08fLMWxh52ufkDKkmHEkxrOw0zGznPVe6ufxukE6nhCZL6LIbW4kcZPVgI6FSDXdr
	 /JuXDV5Gdl/Qu6D/cQ+2vgCIzRX1kSseflxADSfjewT8NdBay8z2ky1BGfPLvJdoSB
	 HLKRKDJJhhI7h+jUEUK04bJOVrcUHZBEObQeV4BvOtYAbQzq4iASCT/RHsDWAE2qEe
	 Hk5HP8AzPXzq+zvWF6IqFrCygX4lfelJQaDR2okAo7PvhGR/Y52fd82vcZEZattgb6
	 8w4MYs16t9n7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951BACCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246339360.8476.1554716621313546111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1e7d428bd200be1649996db36bf515d0f841646498577cbbeafb24a54704fb
Date: Thu, 06 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762463393
