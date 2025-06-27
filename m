Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E13C2F3E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750982994; cv=none; b=ZoWbEHOAskpdtvnK5UNaiQ1IfLunyXTDpNBGpm2+rqhDTcWnLcDjcZQQggfpal/Ht147cssRDjO9Dt3zA3STzdIMxWjkbjiTKlGRu1wFDNtkYcaMSdfRrYKfuZnJbvAb6cHsruyfC9h1GVnrYTXK+zpEJfoHvxR1K9i7gLMbNk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750982994; c=relaxed/simple;
	bh=2s9aGtKoUFOvKjne9lyXZm4ZUevM38gP3D94G33tWmE=;
	h=To:Subject:From:Message-Id:Date; b=njTU0MynDkIya3cfyf7OMIQLEnysE7iKw6gZZDR9qg5+RUOX4wHEGz5UErGF+Jw6215+IGrr3eWPxwEsRFa4zPdtT49d5n5iuSgr2OGgnXC3tdFla8Na5vt3Su9XWi8vdVPUBciVHXc40+q42LgFVrASwb5JMZ5DLDNnXBR0Ir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeeoJRg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeeoJRg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1261C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750982993;
	bh=2s9aGtKoUFOvKjne9lyXZm4ZUevM38gP3D94G33tWmE=;
	h=To:Subject:From:Date:From;
	b=EeeoJRg2agZi3ZUvs8Fb0Gb4xI3YPg4YAYRKRUygTCYPiFm6KXgMpb7yfi3Jzk90w
	 +PojkNKPVGuEAbJoOUgyETVj9eHIQ7n0/Rwh8WlMXk3/eL6oT+DLU4pM7zp1PsQ1Un
	 O8I3DIitbhmfpMszuyZbTdtah/w+ypU+8x2o76fDqLN///J71/m5TDgnmp7NgkKhWJ
	 j4hHpl7aUfT8Ca9RqnZNJQRUfsPKH0GthsY6VhfRlgdQ8HoPPME0t1MQaNKeHwvipd
	 DjkXwgIFkqi//xDm3d1U3mX4WvBhg20muvZYb0u4vyU61slQQIFMatPx5BVkcHsX82
	 Rj9IUhCuvQFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F715C7EE32
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098299357.4615.13388890264354046746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00adcb8f60856bb8dd4d0e502840afd6b864d0fce29d2b4cd60fa4a6d632f16
Date: Fri, 27 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750982993
