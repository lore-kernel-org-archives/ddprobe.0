Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ABF1DE4E1
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752782994; cv=none; b=GMhcCsvkYo5FvKUce+yzMLI4bIi7Bcs0NgpH/f/ZsNd7PyoRRD+Yy6FSBPO2sGGUU25FW67znMT6gRuuPiA31O06AO2I2qhOCdAnRjq5wYTTvvEcrhAhusI8tCWYBgupsYqqxNuZLJqcmIcVMIGijb1nW0k7mk6mYxk5+Te8gGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752782994; c=relaxed/simple;
	bh=Swx0K7GfLG3MmsRRXKYb8MKvM4W7FLSHsIuh/EHgjjo=;
	h=To:Subject:From:Message-Id:Date; b=BOPLz6jFLKsL06iiNKz+6nTM6CjQm+b6l5/qlP1JPrc/iaVObKdmmkndVO86GSYvyWJF1YgEjrXDnl0yo1UrhA65ON21d0NSi8yuz6WQ2lCDBb1pGjVjtT9FJmBc44xIPiRYWlFSG+VY9bO+by/BYpVwpGjJzLb5oJZEulBcnm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkY4zAhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkY4zAhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752782993;
	bh=Swx0K7GfLG3MmsRRXKYb8MKvM4W7FLSHsIuh/EHgjjo=;
	h=To:Subject:From:Date:From;
	b=EkY4zAhpeKZZmeDX6GxvEDH6CtgmdEuNkZU1wWAT+w+mEiELve9wkt0rMTeaQ1yho
	 budbHzc+g5IDklOHzcOK3b07KBTcTWHJXtXbx51fBp9aej1SQ+D1vMGKAgk8rTXzgz
	 L/7qYS9i+pMin5Gm4kKU1uHrjDiAdF8jdVsOB/SNOv0l0GUWbn3WFpfWraq6C5WYIn
	 Q7nYHpZA9AAdvTgv2rorglmikPjUfyOoaKAxPKW0D+7Itm9Qu0ewSb67kjZnuRDfhI
	 d/88Q3kB9zkwmqMq/zdxfuzBjFXUHaYSnQ5dgldZEZZQCKKLw/aoxhQ5i4+UIbNEUJ
	 j+QgZvyH08kwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E872C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278299357.22276.15869032328935793691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9312e08cc2effbab71ea6f69848fd83b927d26dc09abb14ee75433f3385314
Date: Thu, 17 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752782993
