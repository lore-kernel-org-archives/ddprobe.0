Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C07285CA2
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765696374; cv=none; b=HRq8liCDq2izPX7OkMEfhJo0xRU1ViWPAA9Jw4SDgqoKzXessap1O/ECkJJf7bmMLcPGVZ2jm0DRJpUejI5mYQWHlcFWRNEKCUjx7zWOuQumNbZ+tHdo4ncGt7dTF0+D2K/Xtg6bXwDUZXi5p5A/ybvSltrKpdiFGhPRRyr9ioY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765696374; c=relaxed/simple;
	bh=pXTFq8nLm06gF23hl8qgvaQHYvDMNae9tdg6euvfOds=;
	h=To:Subject:From:Message-Id:Date; b=I7zmnSA6LW5Z2TTpFMvKZmF85Yd5zym+iCC2AMkp46WQjdjT9gXsXHmAeRYeOn9oM4BaUlt/aAP1pZh54B9ErzfuLN4h4/VTNh0vYyQMXH7bK+dx3lL/zWF1Kj+0tgeiMcC+Fq+413ck/lDOYjc6MXBM7zyu6xchlaCfBjk5lQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N17hR0e4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N17hR0e4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3FBC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765696373;
	bh=pXTFq8nLm06gF23hl8qgvaQHYvDMNae9tdg6euvfOds=;
	h=To:Subject:From:Date:From;
	b=N17hR0e4t+3yd9nwrNs7R1qEk3bsPFgI++Ke63OJmvk7IOKFauxefWYj/LeUO2Jv1
	 /7d4qya528S2X1zhOjkbW4TwkjaJbSIUSm50ViMlX4u83yyQAshUTr7Kdr25cHAPz2
	 EAdhddnSNnqaeBj1NNMXGjARoNcZbz1ZmqW/+OGd1Aq9py8J5QgvWs8M9NBm7QGgS1
	 mOmP7X39pNQonZeuZbqwerXM4hS73wvzizwfeyKZcTfDzG3kGw/uTIyOzSlqJqLXdf
	 EamHRkctpWHb7k/Ap+uEW2Dg4pJHbtMWpkZAMGsOTkrN+dCvX+w7JmOWRX5dMvyzAK
	 uAybnPQKXFRfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFACFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569637358.13853.10309470974321123442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7485789394a1f1d956c24093ec7705b0e959a619fe589e78ace0464ca9095a40
Date: Sun, 14 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765696373
