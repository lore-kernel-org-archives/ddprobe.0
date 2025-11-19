Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D391DF980
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763569914; cv=none; b=TaT2KO57T9QzvIPWld0kxDCzRwZW1Wczhh7vemaHVJ0YoNhTzlMLQUP8rTTW7dKKgpAvnf5UdlnYxe5kpYa+q28PjTzpeuG2ngijvrnGFewIivcDdm4CGbAAWpI88ybfuLhePjsI6Ygdt2nQSJYZfhssyiKZuPT9FDTXCARiEBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763569914; c=relaxed/simple;
	bh=HhtV/ErYS3/7NihyKB6KUFabEgzRKwgx1YlwKKXEUxY=;
	h=To:Subject:From:Message-Id:Date; b=Atl/VcwfZ4Sf7/iVI9kB7xWn0hd7Qih8jcE82zEbLXkYKJ39X9xrsscRGczgHqre1ZPvgnFEZYNRjEQHWpY2qKhIN/svsYxkrZKx7VrLaEXG2ZAcBqEMW8wKSeCzY7AisE4hmzskkZoQxxj+2BM5MnHQxB5hO6VKcVQ0SimSEmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMWcqcYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMWcqcYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F772C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763569913;
	bh=HhtV/ErYS3/7NihyKB6KUFabEgzRKwgx1YlwKKXEUxY=;
	h=To:Subject:From:Date:From;
	b=nMWcqcYqNTR8+OefBlnFMUcSpBebFCIVoxnI3LDgX66K0SaZ7mcvtzyeVwqYhXD1a
	 igOFLx2wXZlor7uAwD/xSlS8AQebTPRiguy43XgvQXycmR+M1oEbJ2tN0oVjMIAoZ2
	 6WvDnZ72xkjgawKEySI2Khhn08wtazTPoM2ihubydlkgaCt/brjlQlSJi5xLbw/km9
	 bXeENxTSgff0p1kpVe2OV6Sa3SpreSdOmUKxLn+eRDvEsc9TxVU5MUI95VMWE48RiA
	 j7W+FrYwHyWGVqQZBDTt9H6f9+JDsq58pZjVq6bCjEysd49Ie/o82/nUqlnuprSpAi
	 eWMDdWsgtHUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B12CF394B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356991358.24684.11125808102668679393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eee0026d59ed3cb77663cb83f625698613cc8953bf43153e6e388aedee0cb8f
Date: Wed, 19 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763569913
