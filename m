Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487AE15C158
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745554794; cv=none; b=fgd5Kvy+OpbhhWDS/l8OoaSBMO8NmQsQPDEBAc/rcXjNXP+QQTuUy3oUuqGOIV9Fqmq673rbh1k9mDpTrNDLNBSGJmM6226Wo6cW+eX7ygNZKkDviOAXPnq1RJOPvppQw/GINlRvSxLg4gSm+VTWznyrU9djt6aXtYjud48T/+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745554794; c=relaxed/simple;
	bh=kRoq84qJG4U1nV301FgTjn9dU+9/WLD2cITNTemnN6Y=;
	h=To:Subject:From:Message-Id:Date; b=nx0yMfXK9Pyh4Wx7YMMBUItd24SKdw5hZhkFw7UT2xRjYwhjst0NsSslXHoFCg2+bSsiGUJo8fZ+1hECx2vL2v7rCbwwngPfiLVu9pmMPtZzGyRww6rG2RoCYrmHL6Ejy1AqpfPYuycfVp3Er8Dam2CX9j9Tv5CiLTQ6VknEXZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1pXkmEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1pXkmEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98E0C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745554793;
	bh=kRoq84qJG4U1nV301FgTjn9dU+9/WLD2cITNTemnN6Y=;
	h=To:Subject:From:Date:From;
	b=d1pXkmEBD04bw1b2VPq/yijwrlzPN9Z5n/U8g+O3r8xtxVfKdj2bZ+kkIVzS//ary
	 X2ArIK7qNC4YwKw0ZIBSryrTlO81FoNH49fgVR7A1UCGReaE9oWUsAAUK65OJ9fa6T
	 UdcWe5RpH+8kLm7QgUngW6X6FovMag1+TkxzwqL277CpIAX5UR53ex5LyDDfu+MFbs
	 HMee+Tx9sf4LemlRsT2VS0nMEse0slG6CuDCOpMOVlBKESfJv7oLP+4BUmtK/kRzxT
	 ejipVvcMCGOOhO+npD1qhi3Z1ERSxG9oxeuq9vra6pVzCT5he7xus7Ue2c12qLwKgx
	 GLd43vAwxSbrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AC9C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555479361.14320.14997404857848032072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e5ca255fe84e975308f1ea72e791459e8a0aa87aabb6895d61af4aff9f05e3
Date: Fri, 25 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745554793
