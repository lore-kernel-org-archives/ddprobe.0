Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E65B1B87C9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746993594; cv=none; b=kqwYkxLh5CrwdLZqZzzxVtq5od60rzybH2fI8LWZf3hd6onGun8MUKwwuqFoUmkIi3ojjMIXrFNZMNCBtDdUBPyjruCXXa3JKLkJk6yNbIiPIoqZ/hajBr6F+bBcLtL6ABPHQzGfJgUkhOBHgVLf+VGO/a9N7wL7Y3U5OnfgVuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746993594; c=relaxed/simple;
	bh=nShwmgp0JKHSg5x6oQIbmSQXSsUtgXWkF7XvN4in9r4=;
	h=To:Subject:From:Message-Id:Date; b=CY6EeT/bMlF4YN2rfpRWMoWOpa+nVEmptPKe9qBEeK2F4aG94owssPOa8IAArZnaE/J4eHskVuidY9PBTemB14enGrai2ILgv3cmXMhAXO0Otorx93u6nRDUp6eV25ycFH7tIOVDWVkEgqAafIVwS31xgMagif9xIajAAmhq9qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFwsWLuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFwsWLuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7464C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746993593;
	bh=nShwmgp0JKHSg5x6oQIbmSQXSsUtgXWkF7XvN4in9r4=;
	h=To:Subject:From:Date:From;
	b=AFwsWLuRMPug5uHhkhjDuMZsWagsz6i/Vnl2X7iIa1QE9JFvVtml5pi3fOztC6laW
	 pI9EcqhOjEbxIhEQuy0E16IVbsasbbs+2NFiypYH2ThZQnhkub18IJGj3oWcjAyFLQ
	 tEtuT/TL3xo9TL5oOEnJzZFEo4xbV1gVtKIn76Qsxn3uVwhyH6w7KBty82cZF6QtbZ
	 YbL42katPBeD0c/5OGgV4IfR6MGZFLo09kMjj2OsfhVq5U32c5U/uAmwwKKbYROvVq
	 lnZXzqyGhsMWEXEOVne+EZOOQCGu1lQFY3bMxuhsVyPK6q9VGnFlGz1kuHEZRi7zRN
	 G1fi4jFDFxjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE9C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699359357.24171.8318568115282370674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffdbcb50173c390e4c0ad033663f515e666791e705c46e5d211c38132784553c
Date: Sun, 11 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746993593
