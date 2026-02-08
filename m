Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BB0248F5A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770585834; cv=none; b=God6Ca/2grw0zlQ8YhhGz0/a5xZTd5KQd6bSpC03XDNNGm/1QMQq1uKnXr8nE4/VIMOXoYMZK87TeuDo83TcUoW+Tp3fXvu3wdcRrEphnEUxqK1FIzY4oD8lFxnLDLsLDAYkAmKmLuvMY2/Ck2/x+XQtGJCJRYtoG1fDpmAd+LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770585834; c=relaxed/simple;
	bh=ufuLmc37F7doXqqY265VPaxHwmxAy9/hdLOWZO6jjOo=;
	h=To:Subject:From:Message-Id:Date; b=LTvDYqSYtNkAGkTSK/WOHQl5DYDpGIZfAMFDPN6W57eP7Tk792jVTf2H7bJttFNbbfdS5mhBrvwJEUZhjVN/8mfI/zSFf8qzqTnO7GJKV/PqT3L9HLNWEykxCXsSRmb9t2UcjqD/aXj7Hr6lmOlu0k+Om5ca/TciDDTUxd/L5fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7dLYKMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7dLYKMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3867C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770585833;
	bh=ufuLmc37F7doXqqY265VPaxHwmxAy9/hdLOWZO6jjOo=;
	h=To:Subject:From:Date:From;
	b=A7dLYKMmmNXoKmdB6ehWtHMj+9o7erA9we6sZfIU0jXyPO13BYlgnGBd4nucm9oDZ
	 hc9d/ut/yGXzyxkjf3zR4fI6zAFA26DqnNFqhZRL+DS/t7c+CuoWxY+7p18m3fRjZg
	 Uj9Lmx/0siQ6U6DqGwIDQqyp9SZRQHt+eGghnw14CJfcAdM9Izx39yAANl4VSpXnRi
	 NvZohwt+uh9RdVOkhxjAIDjuus/fnQEffs3C3pB6heTW5A6hboBKgjUVyA6og5QUqj
	 JBJr9RPXK7EcSPciorocAQOg6Uaw89LOm5Qf6IMkIqbJby2S+B9aL9HRzjuunznvJP
	 We2yKQhOe2P9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E0EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058583358.31851.9657191657819651841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581c95285f3a34f42cb101d5d91633f38ebf4f650eda0ace193bf91b46f4693b
Date: Sun, 08 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770585833
