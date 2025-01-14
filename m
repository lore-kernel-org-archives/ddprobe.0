Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A415625A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736871954; cv=none; b=DthOPd65FCaF2MFHK0hH3xZW3GIxfkJzDpOTz7L3gRYiKkSv72D9b0aqaqEBdNW4HpIzlOnlex8hVGRz2ePIr52CPFBMifHc7DjtStRJJYRLFBrGlx7SFrMderlmVUkBSZvS6EfQbueKFwjcFaaHryJrVRDWYHWPv9tz2pgRvT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736871954; c=relaxed/simple;
	bh=rSdZT6mR+05AaxWWACdoHE1KeXPgbtUUrKnNTFzW85E=;
	h=To:Subject:From:Message-Id:Date; b=TQ1Irm2aomiqFYtBrUF97GsPrT05PA+fN+6+XgHyCbk837KPtLfFCY1enc+qbSsOE47txJAqLgtNDsd+lVgSa0Zce25dSKfA/76hoENFivV5+7iach5CkNN3DKJxB7ZlFYa602AxRSsFePQpPXYtIC449QRGPWSHrUbNDr8hS3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e79+P/zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e79+P/zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A99C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736871953;
	bh=rSdZT6mR+05AaxWWACdoHE1KeXPgbtUUrKnNTFzW85E=;
	h=To:Subject:From:Date:From;
	b=e79+P/zgYHpYsIxuYcNl6JTWqPCCCSdG9ZK4dpQtouKyRCkh4IfayhYyqer4+k3w0
	 tjQtJRQBbxONdeNUVh4eqNwWpM/Cqx/aAorfDoXSpYQ46qPZSlvy7N5msgeGjbFJEH
	 l+Rvi8UNyCpY8xybHznTj6wxu+AufnsnO72dHFT9rVrOshRPI3/06qjvwtbZLBGydS
	 ZlRvQqHSjsXW84yOalQoalScR8F/Jaukoe5+U0+SGlOg9oeuDE48eQ5NLLhh9RDNjd
	 VJdaDzkuqTy6m/Loigk3c8zs2YJfxVSFzBABYb0eOQ16icT+W21m70xfW3eFtUFB9+
	 YJw7WYszttBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9931DC02185
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687195360.26520.13119808455260257778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6189c2122e571f9bca8320679e78b8ace9c5e6e44d1c7a1e9b1766d7e8986a
Date: Tue, 14 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736871953
