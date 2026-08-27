Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5256947F790
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787846434; cv=none; b=uy4b4eHrdznaKgfOojIsQPnoBOMj1HQ8qMPk5VfANZp6p4yXOpIbMUFrHnkzdbNga0U3SqJ4nM/4MjRZdW5pchy0M+3UPyhXHIReR2FPIvnlrUIF8VGEgxYm2DlgkiHs39UEjWEK8U0knU1ETtu9Htdrx2vvkMg/9ufnM4/h1jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787846434; c=relaxed/simple;
	bh=jH8isDt9LOhJcvhPqfwQMI6aXK6trkFFUEe+y0AdPX0=;
	h=To:Subject:From:Message-Id:Date; b=tKGPSzstfzPic7Dqc+DTAWbPj/fCA4PYq0aggif9Lp2CQt71wLxA9/t3Y0+UFxn+nZ5QEj1JZCKrt1FeLVe15QSuKkbj3gmVksxbUf6Ih5hkUY5yCRFwR18Rb8jVYO6p2xMiArL52S0afgdWovCbvfzZ0AL7sE3kSRrj9d5LWWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1QVae3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1QVae3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FD5C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787846433;
	bh=jH8isDt9LOhJcvhPqfwQMI6aXK6trkFFUEe+y0AdPX0=;
	h=To:Subject:From:Date:From;
	b=t1QVae3Gd+q1bPeDRoS8zj8RlyDtVd+QvIXt7OAjTRv9eKuosgdqWpNW+3J/7wTZj
	 j8qBJl/JaLS99GOjA6ZQCAztV8tXoNFoK4ToNNEUtRoeCAX9XVe5E41HjxVqjVHxO4
	 MABZLdMIzq0fECGV3MPc3hKsVaE9rRDFeWy7IxpxKYdoaupRNc86PQIxroU3X8uutv
	 H3R4+JwhcnaaHh6T20E7nC+nP4G84PKKlw+XfjkXYV1zmrTy95wQh+mCpPL1P8YO9m
	 sLlVko9Ay6z/V70euflNFyr5GyXwTBG3Pn6M0njFN2dDmbvVN/PRKkwF9Ruz9a45n/
	 uH3giIjW5J/pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB1C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784643370.13076.7456202607074600863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafe2a0f302a2b8159cdbf1bf7cd792e8863553f2cb2044b424406b48ac9da43
Date: Thu, 27 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787846433
