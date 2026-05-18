Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D82AD03
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779076834; cv=none; b=PaYkASNkr2LXmoFTDYEev2iqNwfSkh+b5BxOUus0eDxGHAEdTNzqNCURJriyOljI68ZvWONqRNqVFDyqbn5QGWl9vOVWnc6ep6jp0l6sEFwcHIwAEXjTi8o/xvAlCYVKhnua8/xhZ8jzAYN1LMXTkIi/qtrPcI7SeV1F+IQXM4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779076834; c=relaxed/simple;
	bh=WpBMu9/Xre7qmPInxpBSzTldSTv2jRa1O4yvFSiOXtQ=;
	h=To:Subject:From:Message-Id:Date; b=ubWZSjClofsY+v8pCf/M1QpCzsD4+37gUXuF/mIZdl+XIB6pE9YVh6+7COjrd2PWq5QYHWjXo6zyFKqKUWvmYsisMnEbpuQPy31GiTKIBy+W83CQNTWvziFLJ/3yxKfl0LT+upcgEBNpJlqbUrNgAgQjA0w4YO5P2NrdbEOwFgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltlT0nNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltlT0nNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8931C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779076833;
	bh=WpBMu9/Xre7qmPInxpBSzTldSTv2jRa1O4yvFSiOXtQ=;
	h=To:Subject:From:Date:From;
	b=ltlT0nNWgyCmSf/SwuKkSl8DeXYDWDoZV4NcFk7asz7dK9Fkl63SJJK7esSmMg8x3
	 wKj7+wEdvaHuiHnJAp3a1dtBsN68ja3V9rIoRKat4i3uPPmO8vgti691gEgqmHXHAi
	 jd3TjOunYZdEEPXhF1vGPuC9yhRsGoYfo2ZpEQGd72HFbLj5pEAp3DWbPo3tIEV0R0
	 ZMkq+eVf4zBfyZpY41EPKv1CtR3veTj0Z1qN00tSQKF1sAafb2o+IBBtgX1faEjAr7
	 DJdKFn94jR6oXzfbhcciMR4Tv9t3wpdoUZusMka+IbAu21mwM/rkfZAVbOPOrGv4ca
	 9wFGYyG4jy8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1A4CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907683372.6768.10680424046434387379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389b3820572464bf3ba79b19f59cd8553f30f4ecd9b20776cac15bd9aad4e84f
Date: Mon, 18 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779076833
