Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AAB3A1DB
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778212654; cv=none; b=uQtzM0bOdxmdFHxX2GFQgrsIqlMtWP68f/KPHP3JDk3hRGrIeAV6X9zgxN0+0LXjziktFZKBw0zdgn9BPgWZf9Lw8oO4AJ+9EJG8f7Ae26HmW8E9Fkym5YHHGP33QYFZnv8JEr+g7Yb48qn3od/1fcb80/7yvuluhtcznpwE7E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778212654; c=relaxed/simple;
	bh=YXyeRhJSpqRPy/z11tA06dLTBSbY8s872f+W7fXrXWM=;
	h=To:Subject:From:Message-Id:Date; b=FBsrjBePatIlUTRPx35Ta1i0Gb9hSqFFqdfzmK8whZIiAYQsVKhzfiwtrcYk/xvg9wmYibbjaMHKdHDWlqN4/+UtrmXzZcZKSx9aGSDanbQY3xXYPvURtHn+dRzoiWN681dCcaSrDjDPu7LaKNHN2rwDawMvdFL2W8Er0iG1Cxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nO1TZXzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nO1TZXzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E42C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778212653;
	bh=YXyeRhJSpqRPy/z11tA06dLTBSbY8s872f+W7fXrXWM=;
	h=To:Subject:From:Date:From;
	b=nO1TZXzN8eryrhsMp1rdrMFsor+NSHq+j/Lh49bOjexQ9e0t3ULifxtQ1jiVVwc1x
	 kFYBWOcqg7WEkL923lv4uEHhop/7JRrefgLbwa8GWYyQkfnk80cZiRBT2QTfccN04j
	 BL/DvPwRL4Y7qPt/BiSRolkFFNbJtpUafmEoeZrrJEdjO4ZPppz7SBpnOeCxxwc+qb
	 oYm7BG/aM1AQv+wTTjEO1xw3Zl+jxdvr+lSM2iBLZYaOly8UcxXJVNCpoo+kAyE8/9
	 z4kna2YvCnW4u4sbbuWj4eyqFT1rA09CGcSXyQ/C7Jd0edPoUctOHzmYv9V0HyTS7U
	 19Yv3msT6Imug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2CCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821265368.30987.12233171358694382556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915a4c33979856ec7d335425dc110682bc55185b0f7fbc1aaf443513d8601de0
Date: Fri, 08 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778212653
