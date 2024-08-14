Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE201494D9
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723677954; cv=none; b=faH22QQk3Z/VaedG2jg8iwjdS1I3OhA3go+v0G8gQJfk5W88BB7KLHJpwL91RyUaODMR3NsxZXKDmLsr3E67LQmdFA+SDHCepXqRsE21EV1FDoHaYhmkFtlf/ovU22ZXh9ZJ0H8gt6nSie9hsQyaH3LZKtY3jCQ2iHIE86Oz17M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723677954; c=relaxed/simple;
	bh=H8+mDGFl7MnGGvV+JaDghL6PA3jW82CoAjKXBAQ0s9k=;
	h=To:Subject:From:Message-Id:Date; b=g4LXIvTxWPmsvEFchuKsAoNdmbt6VnLxsMi8tADzMLFi9XOWOQU72HbKUhSEqdUQs0UvFqFHIwsqhAMkBSaIiaOoNV1G4xD4tcG6MLGEDggxtfz6XwuOrI47Rk4EQUBvLZJhru4n6/9LZ6hSe8atBj3lNQ0VdnB5DTb6Ux0i9jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILpb2mck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILpb2mck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC08C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723677953;
	bh=H8+mDGFl7MnGGvV+JaDghL6PA3jW82CoAjKXBAQ0s9k=;
	h=To:Subject:From:Date:From;
	b=ILpb2mcklAWxnZYa7lCEbpeOUzUNZn+FEFEBZDZ98imMDN+r7kUhQh3MbK6PK+Cn4
	 xRHodG9OzHH7AMi5VuG8rdbyFraGQFXOvl+MZG2MScmFefkfHEsOQc3w5UkVTVR6EB
	 JS5X0uZIRsbEZ2YbEteBp0k+JCDAsnuUTSS889TiDH5l7fzULRZWJfoZke+QT2xGfL
	 EbS5y8MKBDvmoM9VR2gOpj+Dqy863ZUj6NzlM1VCKgaO70aYtznZzNgquEG4s4Fug0
	 Sk+GfgO/5LHmFiSGbk8DJW5zCjE7pIVz8maovounL1OsnzoQNz4fRrDku67aU0JmU/
	 2dgy+tK6CPfSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E9C52D7D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367795360.23290.17124794646672906430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb68d05570039f95ebdc0aa8021382a861f97b157515600cdbba1dfa0ca71fe
Date: Wed, 14 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723677953
