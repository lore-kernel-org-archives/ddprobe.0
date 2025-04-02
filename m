Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B7D6AA7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743610794; cv=none; b=iPmmjjicbWWfjEkJDGh4tBDYyuEx3SUvGmofeVOwstIge4Caz1EP2RXNxxP/zWWWH6VJySzUBeMi9lk98w3mNJJrPBJmRaU9wqa/syOd8h0qzVkuJ9qukalXifEoL4NWsdR9wrBp/4cWcioTNesOWaz0yzsNwWBh6bnj8NhBt3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743610794; c=relaxed/simple;
	bh=wDfV9JIAcCiRw0bg4SyD1GBsDu4muwAGO3slNS3kKCY=;
	h=To:Subject:From:Message-Id:Date; b=XYhNQqQC8ih/HK6I0pIE1KcddihdDPPmJVS0xpgblOJc+5RGMdDhVlaxrJwIdJMg2yzSwk5XDVD5K7iKJiLA/dXz/ORDrZs+cvnH970MqjPFQeFj25V2zmvNqHMqxpq2b6Cf9XebybCexu671I74zy+3QXZHFKzxMGHGe3W4GrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy7o7SZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy7o7SZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C84C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743610793;
	bh=wDfV9JIAcCiRw0bg4SyD1GBsDu4muwAGO3slNS3kKCY=;
	h=To:Subject:From:Date:From;
	b=Zy7o7SZsWitEbeIa8ccn7TIInDDdw3SdBtbpC7MJQuBfByPfiB522CmagLhfP02Sm
	 8yrjjMx0SXKzFV9I9M3mOU9ErM6Xry+6jtNKDtLECTQWzCOkZhZpNw3yL7q1IuK1Ns
	 ObFfCRlRyrtP/5ey8hK62EqI0w+z/GB3af8quDwkyqBazxSdaZfw7nPATvHZ2+e4kV
	 8wYPhJNG4sYbc4Ny3K5QGVcp3SRkJG4PwoxNytukEmcORsqz9DRZYUdRI3s5RiMKHq
	 z/rEvQCXAU/66ZDvUaIavAbYP8vQJaMJdbeluKZvU6DHcIOkilZc+NqFSP0+zrEzHp
	 g2TAaNt4GEflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0EC36017
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361079359.13198.8600130112963028896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a803790396460770a92cb01aacf5a3907996d5a981fdaf8d522c2fbe14fce4
Date: Wed, 02 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743610793
