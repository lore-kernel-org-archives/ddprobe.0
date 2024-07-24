Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1784C15884B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721844954; cv=none; b=V+xdxIVipwfOmnAtXtjPlB9N4FXsxHu79ppx4ZxL5Lko16cx7YExpVwIxsbN3fZfCBZR/0GIw7JGP4+V1K22W3Vb0Hu7/SNt7wlU1slskEpGeRjH1gHZaGYXmlW8n0YovYEaan/3JkDN7/XlDcPIewY0pF7P8DYVgIQl7AhifG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721844954; c=relaxed/simple;
	bh=+CohLkMqsCofXpfqstTUJ0LomBlcATHELStZM6chDDs=;
	h=To:Subject:From:Message-Id:Date; b=qXM6qvf7IWng9nDUCrNm1nCkZvModdxirqFEHN4oNHatjsiowHXYkmQBSjSIrknaHIOLiALBjfJi5lXxcTLAT8wNHZopCgGsn7+v1KDWz4+5Ufdon6k4wi0Xp5HfQH/PZJzN6rSiWL/9zA+e/eOIu0+/PcryqVsHVhSE82xkIog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck0XrML4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck0XrML4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D61C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721844953;
	bh=+CohLkMqsCofXpfqstTUJ0LomBlcATHELStZM6chDDs=;
	h=To:Subject:From:Date:From;
	b=Ck0XrML4OdypmlkTGI0hUvt0KrcFSg1HLgjQzHWv2bdiFxyNcyXUlbrmsMQJe0UkG
	 bvtefQuh8+lf6tmEuWPdrJUvWJY/vcqE8hM1FDcFrZG51vZ+aQcyUudzzlaKBxWbuw
	 R/akT0uXUzyrlRncUNlPnJ5Xi45ObNkPQwmJV7yW1ZOAK1GV1Yu/F8TlLbwVOZ1Cp3
	 v/c7gqCpbIhhgR/IEgzCDp844jCw4+wy1Ytu6XYAlv2qODtBTZ8aQkGi6Kdszs8bKU
	 PkWOw7oGs0Zr04tNZvYlmD38HH+nIiUi/9OOVoEBdVzG2d2iUzCqWmyAoP36Kd1YOv
	 g5FqkuY5z3Qpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F14C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184495359.11419.11424783559056312651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e533144da871b50c6292f39f274285900788f64d6faedb601af8e05551c29e2
Date: Wed, 24 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721844953
