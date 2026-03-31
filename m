Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCC63126BF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774970094; cv=none; b=kIPDy2hnop2D/UaknRc/+WquGbMJde+IQiQDDPVO/Ums5hl7fwHGqrYkPEz1WjgNcKGE+RSLPZJQyM+H1A+Sh0/QhGsx28VSuQjjM6/WzMjg+7CsWHpuC6nm8UggUjN/jO+1G9CeEhFIKHdBRqRSJ8LqX5DGhnFks77tjQYoOn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774970094; c=relaxed/simple;
	bh=0FQr0a7GiN0nAZ56eexnCYAKCvh6AS764ezDC+DKoGQ=;
	h=To:Subject:From:Message-Id:Date; b=F+4MnZDC1hd1fgM+VeWHz8ApKYy8vsKzs4qqChKcvS7vtVSvrwlGkA1U95SA3Y0msqrpynz/0lM/ci7bx+mgZOQD/lcIJUcuMG3WaMV/PB5x47Rxlnv4n14cUE6jJtjn8WbsOm8dKlX7mkgJe8gWYxFZ+cGZTB6K5ZPnBLt+NqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqi+24pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqi+24pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297CC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774970093;
	bh=0FQr0a7GiN0nAZ56eexnCYAKCvh6AS764ezDC+DKoGQ=;
	h=To:Subject:From:Date:From;
	b=Hqi+24pF60312lb3lA0sasGYvXXXDxCT/rNK4sICB4Hik9LCpAbySU1OXMz1tpgnZ
	 Mh0KvCxS6o23z5RPaqdv0UlNumchNqHY+7TdwwtNzTVVQ43lgjd3zVsGXcViHOBHeU
	 U/9KC1VjkX3NxjIxGeXe9n35Q+Y5N4f4ZLo+aDUWmVWhsxqmSDZhHam4o/NeX6gdiv
	 8GMoQvNlsnypH862AaSOzeu7ZoQ7Doa5LLR/cAmiBlLEmfoqjdUE3k2YO5EKSgn5Yc
	 CgxjGnk1GDM9iW0Xrm90V4lb6d6OHyXEJ0wjDwvtYuoSXL3TyO3U4Zzua7ryq3+25o
	 u12qQeIo2Hv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A9109B48C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497009358.24118.11722963833715681677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adea6e3ac301b3f538231551816f0e8031ca61dfd9787386bbddfefb350adb8a
Date: Tue, 31 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774970093
