Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3709C5661
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748145594; cv=none; b=PbjSpbR+OWA3iJYJwyYF2KZlJnxkMPbe6DfCY7jSwwX7jTmtoKvKlWh9npE+FFZ8loEqkrkOoVA9DRAJEW81R5Ze62OV+U0+94Z4h5RZR60CdjG2RJh/rkqElsM1lag3ohei30lAL7J34peRpdRGHUz2ISHUW/XzCJM/cAHKZC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748145594; c=relaxed/simple;
	bh=xO/BSoAfFcQy/h1yV+TPCpUrILpNiHLyWuGnMQLM8Tk=;
	h=To:Subject:From:Message-Id:Date; b=OUARjaW/z2mAv4qCxwh00gjEhfmGBmHy/cTRXEYzC67yYmdMZyoqvs5iYUHa2ufl3x9cH2EaWTq24ST/9bbRZmZ3snhZYNF5U50mOiJmxTrh/eKdv7Pi0lShu3aBzKNW+2NlYl+OZJy78HZ0lsunLUfSB14CS0qD/Wz7zFbQvD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDTm3n4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDTm3n4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748145593;
	bh=xO/BSoAfFcQy/h1yV+TPCpUrILpNiHLyWuGnMQLM8Tk=;
	h=To:Subject:From:Date:From;
	b=QDTm3n4o2JC+Y94iwW+vaiQ63hzSaalJ7oGRdjBZeWCqIe/90f5N+KZHc1pUKOXGl
	 Pd+ipvSb1aZRvlMgw8YhQ68UqKDTj7eUfHcDog5EmL6rY5qdWyAwUik+c44u9HIMmP
	 W6pKe4POgsb3iLappaqDM04zN/peoyVx7xB9If5gEtTWWeSG2cCDd2wnrXfZV9/txT
	 juwomBIFzFA1WjlieNNhLzLbjSN+JPhMlRGqZdtMY3a7nLYmws4M9WBX0ksFeISxdp
	 8m1yGqeqCXtdFGOJuKrGewVzOWCbNWdYxov4Qo0nVobutkXHebDpPO7sAW45OV2u4u
	 PfiAWZ4Sp8c4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E62C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814559359.27168.18156349800930258887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acec90823e190facf4372f54d8ff40cc902ae12bc9d0c2abc7d40810414acb03
Date: Sun, 25 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748145593
