Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B98A95E
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745338794; cv=none; b=eNO0HS+aXPBSvPCeuVcRjkMhZoVhFJRcmCJgy1krBvM+GNqS/eo065iRsehObUd31ukjhTbP5KKiAz02jIDc9uViGJBZ/EY+WjoY3IpF4NeFPdwK/FwG5rO/K8eOjUfo3Bcx9ikyu19PGyBCSSoNGGeKTXWR8NXSCUEHKv9Gwq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745338794; c=relaxed/simple;
	bh=++3QiyiVCbNWGk1Np/E3RtYb1ZeR2GJNRYRc3F3BpCw=;
	h=To:Subject:From:Message-Id:Date; b=QQgcPoR+d/T0N0UJYiPpXH4wACibcONFUsGkY0NtWFXwIDcCC+ssrc4G+YoMHn3kDMuFHQElWHLh7EIVHSEQhhERj8IssSxDg9Fu+VoQQJ+HUxBFON8LleYk4Vj13MMVLzO6lFMyKmiN/m+3OG0uHnm3PzKgmSnjwh0ITRtNjUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJipEjsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJipEjsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4F7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745338793;
	bh=++3QiyiVCbNWGk1Np/E3RtYb1ZeR2GJNRYRc3F3BpCw=;
	h=To:Subject:From:Date:From;
	b=YJipEjsYYfqwoVlazG1ligv9fk1OQCTx16Msru5YK+kQn8DXt4uZnM3FkLxZ3igCQ
	 gfvtcuGCi5KIK3m+OQNpJrlNfatD0J6HPYXQd78H54Ev1z0Wh1ClovYDN7/z3BZx1u
	 BhSNe0OlzeH9qv+osDJJ7tlGsN27mABF1gAImwayuPr/Qt2ermmsbD6NwMETVFG5Hg
	 AzeGG5BIg/aXyhBJnnHaJiaAHwDgMnoN8tNDxDP+abArQAWRG6ieejvuywZ+hdyvii
	 ajj+2QxN3pQyzRF1guAoYNqrKi2HiWnzgMT+Divpmge6rPWa3MnctpL1mvYYgj+WRl
	 DjLlJBz1Dz6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96672C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533879360.5806.7806250324984877127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73ae084c718eac00048c43ad5b9c4d3d3fd40901794225660c09cf7c61cfda0
Date: Tue, 22 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745338793
