Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57452846F
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746846594; cv=none; b=Cg8LPHLvjzt7/SuspA6lYJ6s24xPp8sveANGGvXkAdgDA+/iqMJTkZ3KmFfqrB6IoklDFNW0hH9cHN24SH0GdDmHrMtXMH8Rew+eRIjZmSW88Th4o3Yts8hQxB0mu+rw7so5mNyulw4uHeKgYmIlXcY5tXDfE70lSWmViIh+6SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746846594; c=relaxed/simple;
	bh=ZqhxPjpNU8h62e6W0M7EBYs9vftzUTbXUvhvhBk8sbs=;
	h=To:Subject:From:Message-Id:Date; b=SZ2TeFXGjKsId+t5EqOkVYkeVOfpcDF4gNqDOdoYNtbTq+XcVJDM+JYaGwb+OpdX6vIXvtQMvDwG5nWwLKrz1ZRfsvLG9QgJ298WpZVyinNrx0Q0tx7xyO7jN8j01Ewn1NdTUDPo5FYFeaKgwfplaxDw4ifZstsNSDhSrEIT2Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iii1CFOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iii1CFOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D35C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746846593;
	bh=ZqhxPjpNU8h62e6W0M7EBYs9vftzUTbXUvhvhBk8sbs=;
	h=To:Subject:From:Date:From;
	b=Iii1CFOOAWqlFlBdhi470ZkeNryeAf1iOgQFsJxEYRW3SJgmygU8o3CjcL/slRMYI
	 L7Hy+9qE97Qnd8sBlJXNcBipiTPE/xQWsi2cxvaxp+1k4ZVJawMCa4S1jlXZqPEnCk
	 PCDcOXNH32dKyG31CpqueejsycwXBQYOWRglxHiAb/VT9Ayoyk4zk4fNM4NIiZsK9O
	 FG2LhAsL3yP3zjOC5xG4MD5L+LloifvI/z5AsW9Lu5BIIlzTdEHHCexpLi2ur8g0EM
	 IjQTPYbSDIAe0+SkXiEUp2YOdXDEMhhfBbGzRQAAwwdLv3igVmV6i+vmlxM3DUSR4P
	 Wsy6F5bkNqerg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD2C3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684659357.32627.7533216765633170892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e17f8396ec6c75867b8b88443a1998afbab0912218d4d2a25874aeec113d61
Date: Sat, 10 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746846593
