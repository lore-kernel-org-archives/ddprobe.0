Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E2C1F2380
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745480395; cv=none; b=kHIMlA7WnwF1kIXjYmSHJkEfHZx4txwR2R4cD5mR2W4B46qeZNHUlhtr8+QG6FQAH+Pzp3eeLBz8ObFskYAnKrqvBSiCUGP52yKihoC7VsoRR9TbSEs8HyvoVaGkrgq2+IUOjGgmc0e6qZfJzMcLmH4IU3ySjWFbYQPzNqz/E5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745480395; c=relaxed/simple;
	bh=92G90zYviGI8RTpAWbaGEHhTv2tXG/4mxJEi6bXSgj8=;
	h=To:Subject:From:Message-Id:Date; b=pclU1l2A6QYUD0iOsm6rKyywSltqnYXcjKilH5UcSSV77oX41dWwz/wXkgDdkSxc0DwZJbE2JU8sZpGcKQOftZurn2rIGT+ajP41y0bI2WjK8lG5V74+Jzf50z0UakyKhm7ySWRAsFAH9a+x3VEZVFXUHSPAJYwr65D09Zk1o4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM5KLgae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM5KLgae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFCC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745480393;
	bh=92G90zYviGI8RTpAWbaGEHhTv2tXG/4mxJEi6bXSgj8=;
	h=To:Subject:From:Date:From;
	b=iM5KLgae1udRH/N+igxlI0s091QqW2cN0fiKbSlnzcCIZjZlZan7t1g84TjiG5ngO
	 iA0LohXD/NGSK7yfe3RuxnynqgJ5QPzF53Ei7ifEi0j0fg27E9nCv5ZtHDcwiRiILl
	 8oAMFzamtonuDkm3FFXHv8u54YJfxo6DwFFsBTXIw8UgoOdJzHv8Gb68Ofiz8ySfi4
	 qy146CbpzVEn3raSXT3ZUGUs6llSf3ayY5WjVXC81gX9+bmYkOCX9oiR2rWVBIjkIP
	 mEQWHCKd9jH+k6I5Jk3QJeNjCfQHQZ8tt7PkNO4mPofqO/ynFSrJog2/+kcORTlxfH
	 32cSt0+NHzVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C33C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548039360.28627.6244668314203753863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc223be6c41bb58f04e398e85d70b04590b15e490ef7383df99ac33f2855dcd5
Date: Thu, 24 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745480393
