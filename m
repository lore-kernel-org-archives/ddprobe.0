Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D8417BD9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747431594; cv=none; b=npvWaQgvBOoTSmQ44vBT4aDKmVR/ezsY3F4m3vGfh2IZVyDyB1EZVHItOusn8mS9RUF+ASbfj/+D6gPBuKaAqTk40gzkdIC9jpLiGGBSBs6YHZI6yf4/FthZARHzJqgjrjin7zA1AcGUzoHzqG11q0CHdA7FbNCZyTbHR2KOTdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747431594; c=relaxed/simple;
	bh=jeUSt2I5RV76e4WBS4zMhpudoeGS/Mj6XOiIjlZSYnU=;
	h=To:Subject:From:Message-Id:Date; b=I1PrfsOMSXVBOD7C7TFMejOGJk0+mcuYTMX+dhx9WaMgk3UxPrXZCDHmkeW8KmEDDf+YWWCV7DkNETBYhMz+WstrvmpypB95daGj6IOSkzCX3jAnHo0puHJFrfN0otOGNbfi6AFcOZO/p+cwnvQRwL7Pk8pQC6taAftTgJZJOjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDQvuLSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDQvuLSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3CFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747431593;
	bh=jeUSt2I5RV76e4WBS4zMhpudoeGS/Mj6XOiIjlZSYnU=;
	h=To:Subject:From:Date:From;
	b=lDQvuLSr6RvokL2//RAWtA7jrl9cK6Tlp9JL/vMdqN+eELqtui7s0Yf2GoiHEvNQy
	 kV0v/t9UUnM/pDHDh/LPPp/90Mv3WwaxkzynrWiNZaaUQOyIrQD46QN8g62PjWLW/1
	 hibU7GBOXtsGr61O8gOWOgXYDWra/vQ/UYHVIA/8u8Z6lUEOm8b42CNbRRwRbOKgaH
	 +5a8UVqGluLQa3di3i+RiIubD9O7i3JT8EE6iIzC6urmb0TiRH1bCnngWPLRoatkwU
	 qdwzflIF8HGF4LvHgcBQ0ithRSy/in2XdIAN2gg8zc9so0Vcj+dl3LnuyOpjG2AI2K
	 B7sia5WGjlErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE7C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743159358.29455.14874343699657948628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7766adb019ea1a76ecf1844d1e686248472e342f800cba892d1fd350424743f1
Date: Fri, 16 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747431593
