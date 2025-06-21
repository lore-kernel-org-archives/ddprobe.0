Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BB14F5E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750475394; cv=none; b=Ptipm8mFHnWUo+czWgBTGyPlOeNvY/iWt6iyfPabESoWY5e5NICxVN17idsz92cGKz/QXiqULJ7oUn32vb/+pdOrhg27KYWS/nfdsBzsI/4RgEhltZ84OOh9c+WRhNfg1rLn86Z/GyY/Tzkj1upEfn7qEN1fxVWoidz12MyRJhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750475394; c=relaxed/simple;
	bh=R9jaj8K1l8sINsCzXspGeyrZvCSLz2ThYx8OI+EtBak=;
	h=To:Subject:From:Message-Id:Date; b=IEsFVgPGbvmj5A77+Lx6XN5svQc9+JZkfB6O69dNYQAF+JNFwYBG9FqoG6c+jpdTMifkm2kBG7eY7d0QFzzz5rMT0SWxdkF/Uxubv8rAFXcPtmv7FUThbmejnIEhzCAW21ILq5oJAGZavy9bKCKh3DTnP+A53fCiGiufIBr+kUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqpVlHHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqpVlHHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5833C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750475393;
	bh=R9jaj8K1l8sINsCzXspGeyrZvCSLz2ThYx8OI+EtBak=;
	h=To:Subject:From:Date:From;
	b=MqpVlHHi9Q1vdqyywYt+OO077NtHsqZgi+Mw2FIGBw22V11rduN2HqxtEJLyGZ2pP
	 SxslpBT0qPlwpvL+EM16LZr0fv6HKNVzKqd9TKXecFxusoGvT3kBqkub4qYKn24PqS
	 BV2DBejuH3yU/4qL8XgK3zlBAwBVI+Ul0SYKkQ2SSi/5l5S6GnxGCFI5HKqW/yoxU8
	 qQt9YjlFUXvKDTtRw7GRIZesqds0bgz+SL/dhGGHm6k4R9npZ8qiXQcFjgSCl1mXQk
	 xoAxw9jsTbYmDrn0+1CZkHCKVsvePF/Q5/f577MKyCxEl8GaQhZ9ajeMVglB+Uvnq+
	 dWf/zjmTq7l8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFEC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047539357.28443.13249116314889789773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77b0b82278e185a9419b1292ad868a26fd2fac8ccd94837bad18d258522eccd
Date: Sat, 21 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750475393
