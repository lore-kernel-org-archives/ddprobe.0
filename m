Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ABE2EBB8C
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789846234; cv=none; b=jI1LwrRMgR78U5GoRmZq9JNjYp0k2I6lOe81/s+E3DcU1KrO67rLiPrcq1jqqfOYnN1E+S9LtYaeq2F9eXngB67kSt4w2YWY5aFJQ/l5Wlpd9m61dAKuvfs4HiCwWO5iC+R3pT32bVBudHxm8E0aJyvM9W+/4kMLcc8xENmGF2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789846234; c=relaxed/simple;
	bh=BYxLaNZtG3d8D+yxwo8ST2ZsMFiC4orsg0XRELNBN/c=;
	h=To:Subject:From:Message-Id:Date; b=THzRpd9CnsdWRIYK4H50rB9HLP1RUjk0NbS29w7mXIjpcg4oiXYmer/9sdr2MMow2MEnr37+LXYJVkl6iNQLl0IL6mjNmh3RfhexLw2jjBKLT6ZQVd2Pr2drAdQPYFqfOVh/evbRByNFWSavs1aZpcfS+Sq3G4tYrXOEz89bQKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/Acimjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/Acimjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2777C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789846233;
	bh=BYxLaNZtG3d8D+yxwo8ST2ZsMFiC4orsg0XRELNBN/c=;
	h=To:Subject:From:Date:From;
	b=B/AcimjpRdk3O9pbvU3Ij8G4jfLOpAQMAbogJaXabehNnZ0U1HTF4EWS+ZsQre6nt
	 4EbceRqWgoRajTJvMxCVPSzmjA9PsRHNLKCkMW8jxgBIM6TDkQUADFSZHwJLi+KSiY
	 6KY13C76rPIih/6wvAlCq1YX4M2hJGvGc5S5akpEP2CjTsuh8W1lpImKMVqE1HTakR
	 /Q+PMXNmw1f0iCYPP333GAbmyz3o2GVrVaEgMxDjvf6kYpIh++K1tRa3hT047YigbQ
	 QGFJGF/fYFJXP/f8MO35wfyT/1Pf0MdD/4lYl2erhaKLbHdrWBgGHcsxn5sEpd2jtR
	 pLC4WPHT8UnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5D0C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984623368.32764.12115554056765046189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fed959eac3743cfef404eacdb4b508b94086c495ced66232192f64ea88c266
Date: Sat, 19 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789846233
