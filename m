Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48026D4EF
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757720394; cv=none; b=Q1dHwZ+5n9mMVMasi2fev9mMbuhkAzJCyU/zTosgvZgEK9HsCzHcvfGoH2nZ+jcwYfIGtxGVR/rvFH5rd7oVdYOgWcZk3bMMFufBqovtU2m2gZEW7y0vxf9VNmfQQiCKZqBfnLiO6P/7giaCpPZRbpizGpHYsBfIeQzJQd06hpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757720394; c=relaxed/simple;
	bh=XdREpkZpnPczGY+U27f5BKET+rUczpwFUMPPM6uG1Lk=;
	h=To:Subject:From:Message-Id:Date; b=kw9xyzKqj9YJMKBo47sZ/d2sgdBr9KGtGk+go/hcBfmUvyrFWAP2GlV3usBMIRtszBiApitzMb3bNi2mitvyhRALKNZm657QJXb7bNRQDv0XyWGY+FMhAKWz3fUd3I7SsGh8dRFOXkaqqLccujLbdtb3hLZ08DNDzrk5gCv5GaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l791vC7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l791vC7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55B7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757720393;
	bh=XdREpkZpnPczGY+U27f5BKET+rUczpwFUMPPM6uG1Lk=;
	h=To:Subject:From:Date:From;
	b=l791vC7ud7yGP8RNWWj/iFGdVPYldO88/BF4lmYaVm1O+aCpflf+s7WP+1tX231+j
	 NqOvGrjfmlp4e30c72gD9B0Msxxu0K9mtgvyF3dDvTiskgNHt0vaIYxznk+l9dPMue
	 NGsCd4qE81heg/XIbcIjiX9tAGV/KXHpsybWombWjcpkBfNv7CNbiP6G5yFC4FsGDL
	 uicLvQo/pWwGTVGyDSlZogS08lYPZZJ9pqTikDukpK1/WobiDGMEtSu7W0+42GE172
	 4m8w6ywfQ/gXzDTt9BM2gy+0T4v9UKjhCJJZuAuC5V8mKmq+XO1oycOVD54p+DEToO
	 Hn1QzosUbzCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F3CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772039358.4141.15836567569674788685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7600ca94db202cebf648ef1d7476f581bc8125468b618dc41da11f696dae6c0
Date: Fri, 12 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757720393
