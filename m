Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E031A60
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749787194; cv=none; b=MkoZ9lH2Yy5IjiZ5EISUcZj3fnviVPCAt9N3AqZLGssp+ugdG5fiaTORdGEziL+cA6SBdzY7URF72UjhkhqILufocyzOfVyJvlK2GhUAYUzAHsbDUtx7a6/EWPoGv8xTyAamrRJpivzNpSc1Xg/RaUP9H9uL49q3bHglR4ibwVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749787194; c=relaxed/simple;
	bh=HMsBPXnpofTEO/CvNorIx2gaRckD4dNRxNdK6TF2qE0=;
	h=To:Subject:From:Message-Id:Date; b=E/dB78+T8TMTSs/e66O7b3jO92yQGrwX28CD0SM3hJVVNsJsBK7Hg5iySiP6PoqqlNy7LAk+iNcfHWg+3EJY0XYxXCl3Es8qADnHcbJR7v9kr4nz9JvWSWMLeWocuQY0bv9OdUUOGr1ULDwHDVIppnAl/QwVD0wRW7/xqzZdT9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNxU747m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNxU747m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E1EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749787193;
	bh=HMsBPXnpofTEO/CvNorIx2gaRckD4dNRxNdK6TF2qE0=;
	h=To:Subject:From:Date:From;
	b=gNxU747mg0+unqjQ3BH2kC/q6nJLW/WIL/UdyTetDvyVJpsidpc7NSq0Z8Wty8dnd
	 hVDXIkSUxxa/RudhbVohP3X2TCm9XWFlbz1N4x5Kw979+wBsFHGiw6bxl7wnVq1e40
	 yAAjUdQOYxpYdmo3i7Wm+0p6JZhgq1AKqOQP/C3jSHMyk+ukk7TxKV8Hh2b6NSl/lG
	 a+VIDRhpcXxKcitmQpasta03IQpcMf5HLG5yAjDeA09Bfa8HQHw2S8xmKCAQLX4JZK
	 JDMixguQTKgRgliV/Rdvwgbajq42WgsCXIpqYvpzaP5v+eWYxlIj38vwGkytKe1jX0
	 1WIbNW12VV1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1FC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978719357.4480.8560769171140880594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68de7289555acc6fd35ddf822347f0f729b7b26a67127126b9af06d81ba15437
Date: Fri, 13 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749787193
