Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1367623C50A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772321094; cv=none; b=XE05LfL3zhdrvWgQqj5sFAsiC3aEk4HP46eniONedXjerJAdONmkRwI4M8vNygcgbFFB+0dIgHdfe21u2QRiYfPcBfUg2MYNIi/UwqIalQqDd8ezMk6N+g5lEVGBeaTRljULpjMT12IfVOF94VFqj1bTlnZTG7IZOa8bIU/uDPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772321094; c=relaxed/simple;
	bh=tmWWgQsYCvUxZptqRIs64G9SXj0Tlmj1U7OCwcmvNGI=;
	h=To:Subject:From:Message-Id:Date; b=LbTFt/ZMVoblhyorZsyxdiBDnzaK6GuSd/fqFdoVl5Ew1NOPAJMtM21Arr0/bXpNdU7nzxJuBU4T97oRjeCTCZKqbNOO2NXrElEdoyeVdJJJNWdThiFFKbUinqq6VuPul8+AVQTfkOXWROkhngaMDiSgVDsHog8w6GEUR3U/hPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK22LmOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK22LmOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A1C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772321093;
	bh=tmWWgQsYCvUxZptqRIs64G9SXj0Tlmj1U7OCwcmvNGI=;
	h=To:Subject:From:Date:From;
	b=BK22LmODn6TSedyQ1Rz96P/zJSp4/20CdzfdffGj5OPKrKu/DSmHcKppDjc0jIf5u
	 Fhc+U0V4U+P6NBz9F+YPr2kSuHGHdkg5R/xKrt7iiGIl/Cc1mfW0KmR0ug5OyN+5JR
	 rK3tjQSMfY09cVpbrPcdz+Izpfg6By0SOlbiOVGMRmaGed2mL6b6lv8Fi087Fq3UHu
	 +WUzkMsxnEZaTdgQk7Kiqd912hLFkGaKrdRH1jWSgShe3ruhturjx0cqDZ6Z5bxlWB
	 yPhaEHQd5+FVKEZ0bCuwhXHZkHvSaOgpH3A0d0OQsLefIknvjI3DsgwYz/M+tuTtes
	 R5T+NEPVTZhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D0FD0046
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232109358.15755.7821902784506544275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2462b9d3d0d7e38e384163d05b48db6d3fb4fd9848b0e1a097a500c50842522
Date: Sat, 28 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772321093
