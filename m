Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9600018BBB9
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739749134; cv=none; b=goWyhdbj3+1hS/Ygu8BvAXGe0N2SQWDb8Y8aumVXVXXpkNchx+B62BTMn/iiWRSiYAwWCJ0ip2m84e8vCT6DU6TImJEHsFIUjKw1BORh03wgNUgNJH/toEGfWZxx2i+iH0UcUZGTRpHdjUzMzBsT/sULYastYtiZvvRqaZ5siJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739749134; c=relaxed/simple;
	bh=9qo5MvRa8b5R3ZfOdNb3zhWXR/imuFDmz3RfY/eSbR0=;
	h=To:Subject:From:Message-Id:Date; b=uaTchx8Sft1yt0Po2Cnp/SLD0+XkfbL65WaCeeEFO1K1iky4JhwwcxOblgq390RAm9+gtsMIDW6ew4SoXTq+zclAo/avGBa9sNOyNt4UtPFHlxRvQ3C2sLq6ETybc2hRGhw1djLY+pCiNNK7izMf3m5wRuaVexHaUuomDO6ZuDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdGzFk+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdGzFk+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB34C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739749133;
	bh=9qo5MvRa8b5R3ZfOdNb3zhWXR/imuFDmz3RfY/eSbR0=;
	h=To:Subject:From:Date:From;
	b=FdGzFk+bt8O/p0XHVymWcabtC0sHO8zYpzVnyXj2FmvtuT4/11jKNc2SFj9nrjncz
	 +mpcXmmzz6ZYcUfXXsr5pZUrCid0125j6VZTEqc9iva2sqtEdTJdhSuO9nXtWBEOwh
	 dIcbuV2T247l9Dy1AiFu3EtS0P8PyKkSW5DK+isjh8FvUMsChg1nLs9/pIIwZ7y/6h
	 nZsElvmB0yFtBmA/hJzVijMGctOpVsWlh+PwarixSap8uI1qM2AMIqyHEmP8cUSeRc
	 kO5qRIVRqN59ImgW7tXcU/lJsn8RBkjYTQBImUTQv7+cbi7M6cKnfXhYoGBZcu3FOM
	 pqOM6ls5tQqxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28B0C021A6
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974913365.31637.5815228254599601193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeca3049383bc353e4e6c3ca3473de74bd3844056d5736387e9f819f621de656
Date: Sun, 16 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739749133
