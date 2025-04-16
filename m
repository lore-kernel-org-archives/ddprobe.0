Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4215E227E89
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744783194; cv=none; b=YzQqIlAyb2KkbOe8+JsSCqKu+sI/J6OtGWrtXMz2KjxPHaIX9vXv5b7NUfQUpIm4MZjGKfxreTALWLElpWi5UcThVVhHaNqSX+GibhBiGZWYhQ9kc06aYo5UevUNicf2ICx++qxPG1qCgeAQBhu27BcnQgzLpCRQ9O+TN+0YXb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744783194; c=relaxed/simple;
	bh=Pq5LmOBGV+ikHfluTQRaIvEMe0T7DjjRfA2zY80D8JI=;
	h=To:Subject:From:Message-Id:Date; b=KeWJGAII/PgrnH1shkw0/gzqbF6GU8fH/aouwoJzVQ8CCy1J5j+lP2DqFVMFZBTqZQbckR3zsU1lZ9xWpkELvNqjztApO+hO9VuL6i4j4ix0cBpaA46hDFd5RlHANvB0wrJAGAPCQF2I9wlNjcIvotFzQUQfRscyqDwWCN5vayQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtHqV5Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtHqV5Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B70C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744783193;
	bh=Pq5LmOBGV+ikHfluTQRaIvEMe0T7DjjRfA2zY80D8JI=;
	h=To:Subject:From:Date:From;
	b=HtHqV5BdsPdMmE8HtepT9tab6iL9IKDRh9TFMrNvORjlcrvR/DxeHUoQro5I3mFTc
	 IFpIRTJfVYY7kbBIn/PA7AxjijLVP23ygBJbES5iGPMCDdCUkMTo8rsTv5He8kEUM/
	 TWcCzePwez0cSS2xoihJMhhg2H+z9P2ylRmN/DIgqHybkzNtx35EpX3GiMjIH46P4N
	 uUtQLpbBAjYXLCuYYuEgJIgz3qZY6x0F458/ysLVc9jV1DWUkfHX2z8U0hazsHwkSa
	 vKjgmVqNKQtnBvRs1EA2wwClPg3MTHolHiB//3H8jP29zvuPOV/ttO0yTrKCnEKH1S
	 wu3dvJPrnFsuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93004C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478319358.9013.17590865562450039759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c171d58340cb697a130b389190ffa097f229b8b20254703eecf2f84a976179
Date: Wed, 16 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744783193
