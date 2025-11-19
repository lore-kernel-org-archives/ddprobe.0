Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF4117736
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763528515; cv=none; b=uvIZZ8l+kyBO64x4KDWNsJj+Z42MbEbpOYs/OvzQfc6h5S1+IXaQHGzl6JriGg1J7mOa0y3Xp2sJJ0kUEAmGovh7xu2O+qUtsL5WsaKbyncHkyRSKpibUKGgMg9gW30R8OZK60hqUl3FvhxVIagJreu7ZE5H5KNyU92I9Gfcvpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763528515; c=relaxed/simple;
	bh=MHtP4iZ7ltKUuWTHw/DQnj0VxcpbwvA7QgyttaJ3IBc=;
	h=To:Subject:From:Message-Id:Date; b=gjlG4ZPztfStigyn421VH2fOd2yPHdEMBMiiI9dy4MZIgxse0bTkq8MJj+0UCnn410Wg6egfqPjVdDYPnMRLSoy95s2iYXrE9RZSmIxozUF1Cr8Il535g9smyGSKzO+vjrOn3vlEhVFg2f9Opb+IhwVpA/OIRYkdPDmgeGaZBe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfh2/C8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfh2/C8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44FCC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763528513;
	bh=MHtP4iZ7ltKUuWTHw/DQnj0VxcpbwvA7QgyttaJ3IBc=;
	h=To:Subject:From:Date:From;
	b=Vfh2/C8qNRf00pQwz+9VLzA8erZC9mJX9G0z/ZQ0bXls3J6JTBx9GSaJ47m1pSVyP
	 myLVYH7360l4bNtQPw/uayVY6o/a+ZulkNBIbCNHeb5sFGhTT05aodtncctWGK9YDs
	 dHaasjSVGK1F2u83wSu0Utv/cWJBMGV/k3Y43Bi2kAe2LU5fT98m4ep3yk27+AeplW
	 o9P3f5TwrSkjkGgXdc0T7HH32K+k4aito1WSDw84rpdMuBFPFhsdPV3RlkXxRbBe7h
	 ojlPjrOhEP86SN+yFIAKqmzFHnX/hn1geDUEMZ9dP3MNN3X6AQ5jhbpfpFaVIBt7zg
	 5xRJi/+NCzK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D0CF2582
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352851358.13109.5443554596508199079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5198d2ef0eef589ee01b696e0ec08696f810c90538037225263b97db0c9c5c
Date: Wed, 19 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763528513
