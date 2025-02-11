Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F2D190674
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739256596; cv=none; b=C98Ea6d/fRGNWG+tpcDhaThYQpjOfd5COzG6dnjnZTVsjQcI8gFi7Z9scr55m9uML4qsnFizRc76GF+Je50A/3SGgjwugj2KSdNeWKZ+5A19TKl1xOeuU4abh6W4OL3YUzJ4JxL0LQCMoz0F1I6Xu/0QcP0TPfuYWag919wUxmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739256596; c=relaxed/simple;
	bh=JhhhuxupFnFU5UKUwNszE6kiQeMK2XQlz0DSlDvYjQQ=;
	h=To:Subject:From:Message-Id:Date; b=Su8K+0Qpk1GI4RXrLtfPR6Kw5XUj7DnEWaZMq2dwVwokLm3X4yVLi3OBgdq2x3nuxHIUJ9ga6FUnN9R5GKfYeRoggKltdIcModQFLjjtvmE139+chdnRBFnkvsvmnlnws5UOovNeILDt4xKk1I//WEiOy9U5e9auBe6gyaQzOYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ5d4NFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ5d4NFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E1ADC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739256595;
	bh=JhhhuxupFnFU5UKUwNszE6kiQeMK2XQlz0DSlDvYjQQ=;
	h=To:Subject:From:Date:From;
	b=lJ5d4NFFhxIyHfryzJg5FKRUwwLrLD1fPJYAYu0vQqETeX6Jc2/xAPFxfCr96XAtW
	 wMEbQ99W65wuGwrYBIVumTAFiMqIxweRN9oFBp0buOr4kqzc9wTO9tCXVRfSRf6y0P
	 Q78nZf6kxrZAsV6LdgAQ6a6Wwm++ZwsJS6Y0g41AxRJZpJGEltZUD+8Jl1lhfdn3zN
	 VcQCqm1tNsC/bSBp+psBFOZx5a2Aq2aNK6gNQPordnBZDMoCIXyb3N5/gznoM8d4F3
	 kmpTFJNH1Cg6kAK5AGZWU8EtpltSov5V8yUwFfQUihmsufWFP8Y0ED17hZdU6gxrKe
	 CEV0xGMcZVGqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DEEC021A1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:49:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925659454.31814.16415527325981649715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ab9346ed11d8bc5d6abd61c1c6680a710e7c76135c6ae10ef6c08eeba2ea13
Date: Tue, 11 Feb 2025 06:49:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739256594
