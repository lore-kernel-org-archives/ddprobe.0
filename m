Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04EC7E581
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708201697; cv=none; b=mLNO9yOIC7RHglJ09r+tViYZw+Nf7Njk0PhjjM6fKTYp2qwtllgdcjH0cE+/ofdSn/t92gtTa1gJOz7kyskZT9V0idsYSJHxI/YZMte7v1kcQKGbXh4z2NA3+PBrbaaX0nM1DL71pv51GD8exmdx3xw01JlNeZkt6hsB29EKOWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708201697; c=relaxed/simple;
	bh=vOgqL/Z/ZF2/yv9DveV+fEjhYXj8ba0LfZrOvJvtdGU=;
	h=To:Subject:From:Message-Id:Date; b=U8qzT0TCvgJ/Cp0F3e6zHAbyGf0nCVHOT6mlEyhCU3AM1qMyFRyVqZj3Q1ZSQq/RXueDAq8q6doiNjGMAHaDEoLL+egi1qYV7n5gVdqy88FawAMEppYCKklmiQQvrkPjd+jiZ9eOu+cm46VPEnzcmtv45EHR7h+l2nzjqGF+JVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEAWg13O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEAWg13O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7841DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708201696;
	bh=vOgqL/Z/ZF2/yv9DveV+fEjhYXj8ba0LfZrOvJvtdGU=;
	h=To:Subject:From:Date:From;
	b=VEAWg13O4GdnpW/5EkYp12MPPIpA/w66Pd8QuXq3VJ3TEYif2IVqyZDdgfhqqdkyo
	 4e5+KE7xamJmzNiWau1jQvBXKjstN3Mk75MaZHscC3wIRAwN97/7Mc7yU0fqMDABGL
	 HtzLFCSiOVdHyWyCvL77x7PbfjxiJVOvT+Q+VRx/pKmgNqIal8PKk7A7zTuxzv5w/I
	 qFbQCSPvN21kDbA/ZTXSd5UX+Qug+qJEW7UZoq9+8gjk+hh0+AEXDyUP+J2prhmZdK
	 BV/L61b+44ECFw7NMx41rpnijQ/Zd5bWaX86hbxeqvnpuLwfRkSTiOdLNh4Xtd10NW
	 14ZQLUUGdkEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFB0C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170820169637.31746.14391631004448103959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59230eb50e444111999a8c80a20926c7e3108f5626d8af27452a594961aeebc
Date: Sat, 17 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708201696
