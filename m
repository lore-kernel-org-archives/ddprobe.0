Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0058B35AC07
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772320494; cv=none; b=S+P+oymbZnkPrH6eoOnplQBA7XUWBJr8V3VTVsDNfTHlgHgNGUkZzQpWlyakwNQ2uQezV1kJ9faZX425YshqJZSYHwULPfnUnraiVRWFTS4j7F9T42k6PsuQkx786S65WFYYfcbEnIyluCohxLag6Mx3G0vdwJPlZAM7AjEYlCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772320494; c=relaxed/simple;
	bh=Uttq/mO/Oj/iHmW0Omjj1MMEWimE+35YMK84GcurXaA=;
	h=To:Subject:From:Message-Id:Date; b=aRbPbyAZfJqvj/4j7XBexaBiwzqC7qN2VaBUVkKijUFVT8+McAyu7MZ68syPQDJIlQ5CVv+NbpI6XbVtJOWWY7jF1hB5CrooEzD55/xL+wR2nUPmz9FBbY+Yt28XEinFgvxWH5OHTodBkI0U6dStiLTU4na6yXI3voMqmInr1U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkQ2J8Do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkQ2J8Do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A2AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772320493;
	bh=Uttq/mO/Oj/iHmW0Omjj1MMEWimE+35YMK84GcurXaA=;
	h=To:Subject:From:Date:From;
	b=FkQ2J8Do6lEE4l4pGbTvVN74WjeOhCgf4dscRsjqjxTGEqGuKh/UjtpAcHGw7B/1i
	 NPz8DkMRxt3WCR3qA+fcT+XqjrUlrrXrQl33n3Np5qur5i4ysHKvJESM5/oixLQa1C
	 7amU0WbINqaLFlwrK/qDXR5E4x628X5N1LbrlFLX1ZXN2fZ0M7+NPqLlPpxIE9fdZ3
	 BFrOxYE6WZI4vj3FtEcNT2I80xoRu7nGv4J+Z4bIpjG4x8NKZdtHxWEMl21sUGnclG
	 anXKsBZ4njrs1BBymUlSz8QY8SrW1hAZbQMdVCWAr/JVJHa7LZHvkq4rkGXLyl5Kda
	 PBkeMYVzaQdJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996CEFD0045
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232049359.25589.3550612110070536913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7e3c2a51d23c2bdbbca4354b334de0c0de24a92100070cd02bcfbb448f62e8
Date: Sat, 28 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772320493
