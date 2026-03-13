Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0DA230BD9
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773372294; cv=none; b=Q1R+BMvjMfwodn+qy6SP2BIRl+0qv3KXt9t2IQH23tHbrm69rOrZPMN+EM+8txWCAbmLFnnmqEB94/bZ44Rjp2yv1Vat1+/j6kD36e4/jDQZ0bknNLI8bu7ULJbuDQO98WqUINipPd1awxmmGbWRJAZ2k6p8w4Qq1lyr+jSL9nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773372294; c=relaxed/simple;
	bh=zsVxwNeR6eH76VLr6W7ufG+5krge4IC+VE8O3sHRoKE=;
	h=To:Subject:From:Message-Id:Date; b=XXsP9r997T+FFr+o1IJcvJi4ip21z0VChmriyP81qoAjTerEU2+qffzjivgMAdyZkMVS+xJ3x60Gi5NidOw6dN/aRyUoMBEV1+vAAUrWOkCo39trLreNAZgpi16kO29rONZmfOyJXuPaOF9t1MQy9i1HIBSJLSIIhPOI+W+vDlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1kpAWAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1kpAWAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DFDC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773372293;
	bh=zsVxwNeR6eH76VLr6W7ufG+5krge4IC+VE8O3sHRoKE=;
	h=To:Subject:From:Date:From;
	b=E1kpAWAL8/ADKK6HHpEAHg5+vwrrQXcCDgEktUgzDNsjmzMVroR+Xl/gp1Bw1b7cP
	 zqT7VuF02YTcjHEjXGEHGh16ncBPvJLvQfnszcBcUpEHQyqDTBNUq05KvhcEE5VUxs
	 S5lf/tCjNLFFN2rCbUWOfUvMhFshW19KRRBJE90eiuQ+ifQiTEalFMYO6ryYzmuEvW
	 8KLfDUbR0aSRHzmS8iC5D/aHEwxgnVutWA6w092MXR3T+d01W31ONdC8BLdSpnqCKm
	 7m8mp7XPe2MMyc1Areq07U1baR4cmV41EYUV6m09fOcOQqWG6iVDPcU+Li9clYbZpU
	 kZ8ms1jgsYImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE36106FD6C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337229357.23437.4662767465737890737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c51c2ebfc145ed1c70aed066cc5e471518b83d5d7045ffcfbf87b9b3b596ff
Date: Fri, 13 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773372293
