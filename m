Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C6917BAF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717829843; cv=none; b=FcvatHRS3j3ibmz3/5SCRVC8JtnG8qqbow1Ct8K3hn4XnVAN8ibQ4aQv9Vhc5TUEIe1Bklona9qAodNp1d2aexPUOVJB16MtuFmR5HbZBGSG5IHfIJhfto1hEsHW8O9aK4+nxXvZgiatASKV0gv50QTf+jbTPBOexU/Rt0HVth4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717829843; c=relaxed/simple;
	bh=AaNd+kqU4OZhk4xZ1FQcRa2hkNoSsl4P4l3qpp6Z27c=;
	h=To:Subject:From:Message-Id:Date; b=KmLgtuAqDOPGSp/Ig5tz0fMagTow6tVQbLURKSvkQ6HpeZUZ9HgjXA0JvzYBkptoxtJOz/65JNwrts2y0KXAfuN77fjYGgKMEsC0Zf0YT3lxb526MndX267phRmmzT1hsxhZN+e34GgBhW6SvjxCjYuHc7byJR/rYSjG6gmuPfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUxj0pkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUxj0pkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 028B8C32781
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717829843;
	bh=AaNd+kqU4OZhk4xZ1FQcRa2hkNoSsl4P4l3qpp6Z27c=;
	h=To:Subject:From:Date:From;
	b=GUxj0pkDnv++6NqvaD7rliakIi66r+CFZwOhpq5cmMPqKbsHxlwR2o+1UjF2XIPtU
	 gwfiF7kh9J+rAWqPD+FQlp6aS0mAMLXYaspOmODn+D2e0tdy6H1Ds5nYwnFloSf8gD
	 VshGE9mNV5Oy2nQjLlkYlrdX3ooFHRWxRwbcnIZgIrjBxtuzs4OJ4lgg4c4NhyYRPG
	 DuvP8gUAkqzkvmfUSIljaSH3/9w5fO6wGxSj6yzDB/fXkPCLiCYMmM85bl4fDx5Y07
	 5uPrHZb+ZjrikmKzuJz6YvJCqldwx/QTH2hPKFv0SrN28EuOHRQ5gRGmzCsFYn4YPU
	 rb4I+ggXoWKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D19D3C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782984283.7828.4397281509283064645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80528d5bade070c53f35389eae6ebd2cb96b030c17242cf6207c9c184bd254eb
Date: Sat, 08 Jun 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717829842
