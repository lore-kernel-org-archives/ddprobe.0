Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EF91A23A9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746587994; cv=none; b=F+u2YRMnq1aX0hUbipcjCA80fP3dgkwbmvfJVVZsGROfJ4DPFLO1RmtD0fR/P68VvRJcYjIus9BVpzm9oeNRA3FYRUAxqjxSEougjfE+HZkool1zLxy5/EFZoHaEsIAY6xh+GEVlj+w7nypP+BxCLcCKY88aIQqMB1p6KTgeOWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746587994; c=relaxed/simple;
	bh=GoqnCm9sIbS9oKVb/ql8KG2L3/JkAhPeHFk2Cd8oa64=;
	h=To:Subject:From:Message-Id:Date; b=U87UdJ8QIF3ynNNsar/TNXYccTxllD7Gb+kVCPyra98Ud9aTxwrDR5grqqZIq9UXF+IF0nLUHAbaKNG2wBg8ZyT4nH2i2YyonGIcdj2hNnBj9xs+ilJD6bBRHYxDSG/eyjA0GVpg1oEv6kOLP+wckDzBqRWWy4bgGhpcr1/jiQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly33uS4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly33uS4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7EEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746587993;
	bh=GoqnCm9sIbS9oKVb/ql8KG2L3/JkAhPeHFk2Cd8oa64=;
	h=To:Subject:From:Date:From;
	b=ly33uS4JyPuUr9pky5riuQbZEYVyMEXV/0He4H/TIIAGSj0nxbXkW1RYc8AuaStJt
	 QX9VxsO35VQV4Z1SXudiscY7nupg1zStO/nOpsZOhjfiYI0sVcuaAT5q2tdIRzkusJ
	 OetiT4Eyczs72eeOTm/buT1eY3cCpCEaukGQv/RNwj0jAPpYx0NxirW35PUbg8fw9K
	 qrIuIa+CHg0B61/L32x0FzOZQbVxCAeXfGwCQWqLbycWwCNWEkwLbXHBO8Y5+ZWc/D
	 NHtpL+r5b9U+2SDQi5w6SWnunFThKLjVJXtjfcCar01TmoZWJ9aPAZ0xCZgmgkcanW
	 7a+jFtHK6G/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E949C3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658799357.1698.10007959017397663524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba74172f126d16eb059381dd920797f4980fe40c83e52ea0a67d31014010b07
Date: Wed, 07 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746587993
