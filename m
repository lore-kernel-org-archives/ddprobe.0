Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7322D175A87
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781420794; cv=none; b=dgZWeanEdFBn23r9H/BccG1coJZ8Z087ADRzhmYjSt8acI43TnyGBhI+mYlJjLQzLOvm0bR3MBK3HRp0Of0hbqlv9V1f3+2ZieVzlk4TXodN7YL3XhOvklR0bL3GxmZAtGOYHqYy2rV6iif5jyxodK8SaRbibWZkMryze8FzBDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781420794; c=relaxed/simple;
	bh=RaFO3kWD0PdcI7eHBniD0f7vIzDgn5gQQj3Bsy0Bi3w=;
	h=To:Subject:From:Message-Id:Date; b=Sz6WLxtM+1yWtm/1DWuTCEHSZ/yv8RGW+TPm3mI9it65Y+pDQnlo9D1GAxclm/WPdUyLdzcSruppbytaIcBuNfdBVGM2DHfZXUtjrLqkO7INLXoAPi1L7EyXN02hvBJ4IrvWBWB9kgACWrq5v29ENpawwAHM1OXxm+XwSQuA6oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggNRTaAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggNRTaAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3CFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781420793;
	bh=RaFO3kWD0PdcI7eHBniD0f7vIzDgn5gQQj3Bsy0Bi3w=;
	h=To:Subject:From:Date:From;
	b=ggNRTaAmEMH+oWepyHEkFbVii3YOM26m722LlzyeiFPzG4Xq1bgqR8FYsxXN5Uj5F
	 9ArxQWycvgSc2fZ+a/I7hp9hHDT1ydEy6VDGSud9bIVBDfmuS79IhR+gbWrbgF6w/R
	 lLx4OPbfHQKu+/QNgO7K5bCH9gCrYbujFNnIiC1A/B0OVgNRdkK+E9juhVq+o34Ann
	 Yc5rRvN4WfVQh+CcvgexRsp0i89Lz0BpHAUCSEUV7IEZzoENVju3T7ACxtzpKhS5we
	 SlLmjcr39XhvAA7kU5OOTNGPG0iDI9veig/j/dG49jTz2gWE4O9MWbtkL+sww5wqp/
	 0h77S70zFjAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B8CD98D6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142079368.9689.511072952077903613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36953821a1c17ae3049d4044ee98f30275086a0bd733c33634087ba2c09f43eb
Date: Sun, 14 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781420793
