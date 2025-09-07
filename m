Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155BE21CFFA
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757240394; cv=none; b=ANQ9QBicIS2PjbBLoCe7CC9NgXikBlvGzIRuGu2iAoy8ZULH2RGCuTvwxBHYPt0A2INdLdI+XypXxIAjQOglsQeii4PwybWZSWfm3RxPb9qN8zyNZaSPq9EhakxI9iebk6o/T5TODPN0eljK5Wccbws316oiCjt3TMtyCw7CcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757240394; c=relaxed/simple;
	bh=FhHGr8dkNp0U5ZXbjzRPMf/bz+JmIM8M1X7CtaNS/Eo=;
	h=To:Subject:From:Message-Id:Date; b=gjIF6aExQFkn2JR7NJUb+86odDn5GwEKaASB8fxk++5r0CkBGd8Z48Ja8YBnfb2biKhtLWDpLtwbIH8O7tE1Ea5gTldGv7iWACrZ9CzK9C514Elz0LMVioV3ftW+JpRgc/pqfD5sahlTZol8LoJ1dX/zPgKOeTPtv4lFMSc7ZVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN6dnOFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN6dnOFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6632C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757240393;
	bh=FhHGr8dkNp0U5ZXbjzRPMf/bz+JmIM8M1X7CtaNS/Eo=;
	h=To:Subject:From:Date:From;
	b=WN6dnOFeqAP3V/qOVVVQCF2No6XWD9Qu57amsA3C+yO7Jha8aV8MfN1Vr4Y1fh+ac
	 RESFUohuwoV+NDpXk2PGHQPlhmCNqZqKonERZAFf+LsP/IuMovrDOETbTeQ4ZT4KF6
	 NalU8f0BAGF/xdph5Ub2gdDxxIX7R6eeTpc2dj0IK4gtQ09sbWuIY6bpElMzSRIRLf
	 PqjBO0JQMfricOIaI+q8b6WpEiOaVYT8MqorMWMURNN+8d+5OpGrl/W4pZZ61OJJmL
	 aAVvH9Vr4GFG5FogAEeH0gFr7oFWtTg4/JnHQgaNFHoK3tv3rcqjjF9BUNrCiCHMuw
	 jWwzuvIvDEKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724039357.18238.5337940300447673105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235faeb1fb555832c4a7d9c2bbfd8d9bf212274f30410980f315efaf1b8ce066
Date: Sun, 07 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757240393
