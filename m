Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD3D31D36E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757438394; cv=none; b=CHJVOOiCKq1J/oHqE3BcolTuqXnSI8/AlfGsi0FBZikILn5ah7rauAvQASuerkg6I1CigKLTVzRcWpgM8CpLCarNJ5V/smk/RNslts5JJ6dUMDYKhGCo5I+ehzAZ80RNWgNkq+6AeoWW35BxWQjKxG+8NcRlN9wHNa3lEXCzWcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757438394; c=relaxed/simple;
	bh=Wr0PqwwbHWjMI4StLfIfbOk28gDjHzK7zs652pQOdB4=;
	h=To:Subject:From:Message-Id:Date; b=NgtT9evVJz6He9nrPCFuQz7TytZjbGBRT50Y1AIWV54teBxO1r38bXB3qGzcZ1anPUM6Dny5eqIjOnU+zZoscCLvCxJBM6ETOI1A7PF455ds8ghZS2YYQjT+mhw3hrwxqCNfGGFhz7Ysj3pmC2r/B2i8ovKakFkFRKD0/oqh3S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPpYWEdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPpYWEdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE8C4CEFD
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757438393;
	bh=Wr0PqwwbHWjMI4StLfIfbOk28gDjHzK7zs652pQOdB4=;
	h=To:Subject:From:Date:From;
	b=NPpYWEdkyFNg/XVAW/bEUgWLrvo06abxykSEwyyD34CYCs9X+4IW8tvW1fovne8bW
	 yfcKROZoXxDI/MurfypP1LgiqZTG3eraIFEXsOLkvZ4ffSg1P5oAqQI6f280sZ7qIM
	 c1cd3AAdLuWNjh7Vro2dUIMXJydW/Fq/onxGKgv1nAl+wtbn8JRl2KAS2aXQJcd2UY
	 cPbMW2gk4kS/AP5tCE1ltpIb+DjIhfhd5qVJtQJLNKSBuqVHL6fZNx4ilq+ewmrnEb
	 FWd/YRF0n0p6bJkVM822nY5FHDLOl/wTAsA5Bt44oGIgkeGbUk5NMFKX14g/gLGTxY
	 QwmFGYTeuhBOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90742CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743839358.28691.5414370525605685336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c351cd2e5004db29049066174679690f044a7b296ea3ef21bcf111fd2e0604
Date: Tue, 09 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757438393
