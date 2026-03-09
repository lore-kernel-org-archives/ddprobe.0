Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113E4314B72
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773034494; cv=none; b=k3VIwwjQpkW1POh7vTEIpPK8KLSljdgM1VQKdyzmewjkZtGcU1H1KhSXiKAyVFgELcf+jd5wNj6Q/2ZkhgI94cf3yRb/fDU+TslNa+uJswM2k9fFFwVteLLjmT1n6PO1b9DiauXjjxA9o+YtquLUvFuAbEFUDum8No7Zee6QZbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773034494; c=relaxed/simple;
	bh=JhKTKtAKkRBXIHU6gQPxHqcJxD3PIr4FdKGYMD3Tr9A=;
	h=To:Subject:From:Message-Id:Date; b=pqxw+5u0SvXuBD+977A2uruVfhSSygAHtIAjvp+S6lX+wa5gR1X5ZdXV3W+HrVnXeZ3iTQrAYeJYjpEpoO4NRW5Cuf/ZJ25E12xn7FQ5//GMT+n13i5fjOGkLdd0ue1BGKbrjkGCd3KjQHLLQMakLfkAH9wYeiTQfzWXn5LrebE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVQ7exiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVQ7exiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C49C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773034493;
	bh=JhKTKtAKkRBXIHU6gQPxHqcJxD3PIr4FdKGYMD3Tr9A=;
	h=To:Subject:From:Date:From;
	b=AVQ7exiYJY1Ljr1HVl54EO4Apxj7hD4BCs+0WjSTrNSl6XltWO3JU2U/z3dsUeF+w
	 4UZzljnn0yeMXhvr65lSFmS6pEbhDjj6Fbj7HyZYTiK2DYKrBZjFh0mMkGBRuKMxy2
	 P3bQds8ehpo0OL0Xcy9BJdNFtk1KkhXFVEJZxyL85RxtkKitlClXKNSSJQQB17niiy
	 MBsoXdG4xjATGs7z5diHINQw7OSFPcbLqNoj4p2LatpYgXtksJZu9n79ZPSp+WUyLd
	 1kV5Y1KzgIFGJfLqpNaIbvMXdypR+3bFRdLy3P/64p6BeIVmCGkteshHpDSf9coflk
	 H5RTWxxzfIbgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA93EA855C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303449357.23449.14935922990735302796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfedf94cab1117f4c5addf0a7330ef40e6bc09161f6530f1f7549fed18228897
Date: Mon, 09 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773034493
