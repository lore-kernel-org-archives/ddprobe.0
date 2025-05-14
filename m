Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3190519D880
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747237794; cv=none; b=geGJDpaljqfBj43cuYhSoAckkWVwGorDn6qoH1Ydf7duUFdgjC0uCvSNW7w6Zf8zqJTJNzIaGn+lDOdsxbVbu7C6o8vTlxiN1NMc6WzNZYbRzA9j5TT0gOEnPez3JAQ3+LqFvkbwM7BwsaiPUJF7R+gwy47vQb8D5RC0bl/CD14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747237794; c=relaxed/simple;
	bh=gH5/Ce6UGkkjDOI6eKFhnzEwR+zggHOC+Xqyg9lc0kM=;
	h=To:Subject:From:Message-Id:Date; b=pk1tFrx89X4bTQdrjBxGyaEmsFSXv0wx5QYEXesLAQaTBGdAYKG5twawQ/Zu6h9lkeR2VflzvLXEAKjvjfLTd4AcGTGAXzylpJHPagmhVfvmzkkx+SF+RMlq8BGbXZa5u7JjyCumA/hryxo+hT0hQYoZ1pPrHJKrIm5PTMz3NYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vihisz+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vihisz+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F957C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747237793;
	bh=gH5/Ce6UGkkjDOI6eKFhnzEwR+zggHOC+Xqyg9lc0kM=;
	h=To:Subject:From:Date:From;
	b=Vihisz+SltulZkbcWwQz2ijaHKH7oyMlMJw7eK3lf1v+hVqkROynTvW3P8tsfYTVU
	 VGMSy6fzeWBwm6QR4+6UqP3PPi2U+yRuW53Mbnhc8aJy+Biu8kzFVa8Vb769PiS/2x
	 zg781E9+bxwMxppmbbBsrcgXBedpoSEgv3Kv4olFylVybO9PiPOB6/eF+zGbqvMbzW
	 yQHd1lyOsJR/v6kDgicDvo3D9dmpdArSN4xLfjmo5LbXnExzsQa2X0Fertt4ZPMULv
	 61NPG1Ayl++ZYYQKmtaLeb36DM/J+k1oUaRO58ohgZCINE4YjyNTpvgdjUbcEtHjog
	 PTo7eQvImkNFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E666C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723779357.17798.1774524981001149967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2095a972913c8cb5e619c22f15f90e3f9e8aa0332bd35a9557463c8236c46458
Date: Wed, 14 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747237793
