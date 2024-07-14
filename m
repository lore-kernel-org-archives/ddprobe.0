Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD25DDD4
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720944023; cv=none; b=B6bwgwVEBrAQUSUpBzEcDuIzu4p6O9bvX+Ew4Dn/jJQ3mKy4k8u1Y9LY91hLH7qzlogivtUItjewVNkcaYpzjHGjaWCWaVHU1ZolihuGwusYDZAZKEkLxka0a7yKymFXoIyhRTUuJYAY6nokM4BJ06/lwo6wvJmIA2QBhCoxuaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720944023; c=relaxed/simple;
	bh=5g+sx8dHYLlNZ7yD/zYjQDi2YRqaLHQT0ybc9ZVIdNU=;
	h=To:Subject:From:Message-Id:Date; b=t729bwheXElxwSSS+TvM9Mu4DR7AdDRmnWJylGZgsa6zq9iVr5HxEMkTu8g64YfSfEQ2B8jjwBCxD4SCc9uHixuui+s9v5j8M1V/NAdlKKWdtGLii4kcMDaO+ArtNUfOxnUifhyOYXAnMBDrrYD6aKeHP3fuhw/7dkxdqxB2mYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJXL3Rwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJXL3Rwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCE7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720944022;
	bh=5g+sx8dHYLlNZ7yD/zYjQDi2YRqaLHQT0ybc9ZVIdNU=;
	h=To:Subject:From:Date:From;
	b=QJXL3RwaVcOVcwqPcYSQD/d+AEWDKN9n0C3d57DE5TOU8jxTdXP/CBmBYmjkYFxF/
	 B/05pHH0QhftvvGjd5UekYksPoi0jIYRBMRy/c8ZeCWem2Kw6Lh88fFLL/+PWC0Adi
	 mSYOm3ew6FwhUbAhwvI1mTDeN4ZbYY2+vvrXnD3iOEVT4fHUH/sh62W+FV6X12nxvg
	 4ctOtMT3w0MWVOFMs2RjyZmKvMd7DUJnzRRhDwNAGZjueKzioSnu/E36EhSLus6sqx
	 U5yrvKm9AAQpHpD1QYBbGNrsRBCYq42/7BIx/uHwiJqA80/OoCQ416c61B8uPzaEvu
	 tSrN7iv3Di1QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68DAC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094402275.30730.16985518255601087964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db07ddf43ac45e01a33f525092430f1c793524f3b53c3f201b5180af153d49d
Date: Sun, 14 Jul 2024 08:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720944022
