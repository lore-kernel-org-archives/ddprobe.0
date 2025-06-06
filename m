Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC3A18FDDB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749233395; cv=none; b=QfWow1ELHa0TirCDh6WbG+VKJHJ2YXC7/kYGahzNERrykbXGwYc/rNGnwVfrL/fEFi8HIPGYQ/5kX9IzFJWFfdZ4Cyua4NUw1XM01WmM4PLRKbrppTuElVTlWWYLAhkONjHDrMFIDegJBt5pd6c4tNo+evYNWAVkcUtGCbYhBqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749233395; c=relaxed/simple;
	bh=JjjDSWmLhv/+c1jQZg+LILUDd5ldesOUu/Ms5sqNVr4=;
	h=To:Subject:From:Message-Id:Date; b=apbiGRGDZ6DmOSBYL6gdeCLY0VAmGyBHpqh8tVVetUqc7fWwOOlt5OuR7PYcmwOpiDxO1INh0cakdCJUJpeSwPXsvjXJowtbOlGBviLLMsrk04SEqrkrD49CkUR0DPX3aEWbSzsB6og1LUapk2ee+RYwiPN1qlfQ7xXsTlbmV1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjZ0H2Wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjZ0H2Wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749233393;
	bh=JjjDSWmLhv/+c1jQZg+LILUDd5ldesOUu/Ms5sqNVr4=;
	h=To:Subject:From:Date:From;
	b=KjZ0H2Wy1hx1AktaHGoq9djRhy2UIxZiafz8NX6Olwmxcg9vM1IU5REty9IPb2o+5
	 Qpbl8eFlwLUErYjDjEkG3F8SweT2Jy7z8zSsGrF+hQ79Cj/UszBQD+QOc/OLEONeUY
	 pYeYJ1Q+sGb/QilJ0+bYKI7C/nlxHm3PZlL4NMT1Aed279uYvge8qF2aOGveoCRELy
	 BYtNU6a7vFyjhjrsdaW9WH5glsL590OAP6dWblOOxMeqL4kwCGWUnXZBm3UX8JxswW
	 UaPDjD9Lb725tFZfp2SaMOOJwvUH5EWW9n7JZcVMGHOZidqywFS94ggv8HKMPBY+aQ
	 L9lmf9S6UF1QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95976C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923339358.12017.16103004940942298541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4486ee46271909d3647e14d13ef82cf9d4d7e36337504275b582e7b287505f25
Date: Fri, 06 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749233393
