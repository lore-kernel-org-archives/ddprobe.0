Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EF6204F8B
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744923594; cv=none; b=CRx5iAYalaTHG8fLOly+vCy3xK9zDV8xrQZNotxlmAGXwPsPrnzhUzm0A9X8h5rwW76LpHVRj+cAzBGBpNHJnDYOH7AEOWxXFWBVxUKiObiGjBkNSor2ZRK9hxSs9P2zowMa2PLhYQFlHbH5hChNx6XTGZqN83TrPn5p81/AhWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744923594; c=relaxed/simple;
	bh=3ItChqe6er4qT26oXBkBh585ngtCNGvzjgdrCLNLG+E=;
	h=To:Subject:From:Message-Id:Date; b=Hacx+yN1pZQ7MErItIT7Vxz8pecvdwf8JC0jIIQV55mofq17+akDUM7NE67xkIna2cgUetV9o6qB2HHhahbdhHfhHdJM1pY7Do3mP0Hps+3yy/mw+cWaXJsCiMFYxoCcxPFKOPaVWvZ8h/aGqGbYVZrVFIyDcDmrRA2XuL5vlk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho64zTXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho64zTXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4EAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744923593;
	bh=3ItChqe6er4qT26oXBkBh585ngtCNGvzjgdrCLNLG+E=;
	h=To:Subject:From:Date:From;
	b=ho64zTXkH0Rhv1B2rM/cDsda47wHH9ueWUHTBdAUu5BVP3FS/nctM5OqeTLgGAudl
	 qjQdURUkx87PuGz1s+oEuHyWT+tOE46e6NqAn0l91wh/m2ZWalmCVRrT0IsU+RV+Kg
	 o5zik4RpVuurn36B76DspMPOwz3NmOBNk2G7GRrp7BAuA88YVP4gt+AN2V2HJHrgzH
	 eRBwJUjEOzost4Hc1cnZ43LVFK3BwLltDI2tV2gIt8oGBOuJiDQwKab4zPuipEwTkN
	 w7F0p3u7Fyr913RJ+Pw7b5SyCo7S2UMOAkY5XF0Hh+6i4RdFfNSdVX/dO5bwHzRmiZ
	 HdFaSsvr9P+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99557C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492359361.23172.10362380260486167103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219e029b692c7cfd43fec9217f074cde8339422cb5f5376e114568af207b447a
Date: Thu, 17 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744923593
