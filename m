Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CBB4A3D40
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790875834; cv=none; b=tnMZxghRrnzHGTJbxH/Rwaf0jDY0UdgeJ/mcYo7c2dji2qn80bneO06l4JISRj+1HZCs3S/UUigglOedfLOUZugGQkEFv58hYGWHOJNUKTyEmmvyg8ZvoEr7RHxQBSLRBPnn+JL9lkQV7Ue0AQd2rHaBmTWQXoeWUpjfaHvTcaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790875834; c=relaxed/simple;
	bh=IL57rOoZo4eRzVQ07oUBBzFvuWfKDikxHoA2+akXkeU=;
	h=To:Subject:From:Message-Id:Date; b=kmPpvg5I5iINaeXde2WrrKe3O6pGN8F02u/Oh51avRExbriXwI9IW184lp7/l4PbdX0g4ng3f9hzrtEYLFbZ9q/c5xNiTO2focVAEqoxOmX6ClBkgXAq0Ae2g/Ecbg+zq1ToKAkRErzNjC6bXhgQhntUI2sy1dgcFAO8LXD4Awg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9Ues8vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9Ues8vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF39C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790875833;
	bh=IL57rOoZo4eRzVQ07oUBBzFvuWfKDikxHoA2+akXkeU=;
	h=To:Subject:From:Date:From;
	b=t9Ues8vhjSBSb0v3YgCO4RwGAVAIn7IN7ANWdSYRwpwwOoJxCM7zAFjWqER/ymp3r
	 0OoA/OxHRoJpdoeHQfGcmISe27lCJhFCESrxqtBNcDlvOBX9PgslAwzfTnp8YJ6vKI
	 3V8vFbvgxCjn5kGkydAFLUxEfHfE/n34fnxWq6M3jewJMMu0q/qR+AqB+OpAbsiUpz
	 sRK5Zw7iGHFeaISYznZeZEOnMQjEp5HBfo5eAE0YbP217svzzfmQovoQBqK3hsaR4v
	 hGfpVGeLiogihBbYUF5weAR6GiEfWYQlreI5K6J/V2l7DIU7Ad3vuvrtw10izk4aqw
	 J1dB1u9lq7ycw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A4CA5FCF
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087583369.7057.16255261568851899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdba8f566ca7c42c181fd31d0f213502cdeadcfa9c30d1dff0e65de2a2d1f37
Date: Thu, 01 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790875833
