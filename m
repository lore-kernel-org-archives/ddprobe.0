Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A476025
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776995854; cv=none; b=jMQpFb76oDLFtb56Acuy+ELaJ4ZhL/vThncSEZF1OZ2bxNBbc/amDG4iHK6mvfA3yzhCL1uj+7zn5IO00u4guO62u6MihhzWCDgbtE4jYDYgXZicP6C4PkQgRkOagS5nP7UZsnBsKCoBz2sXz8RPhdUuFd4hXB/uAJVzeR1cbWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776995854; c=relaxed/simple;
	bh=Q5km+SdNp+ePxIqs7VgIdp8blkbfOCh8+LAeyfvfWs0=;
	h=To:Subject:From:Message-Id:Date; b=q2rcdsIxBkY+IfIquoeIBRm51txC8d8pmEwquL3k+f0mN09Dz6D1OKd1fONEP56+EKfWv2iO1ayMxqDxzqCffYlL+o6NTN03S34nTCIgw/H27CAx3kwrU9i2Ni34Nddnlfg4/98auAzNxN7Wva3b7AAc3HZ15G4OYD1xvY8dPI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhpgClOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhpgClOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DC2C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776995853;
	bh=Q5km+SdNp+ePxIqs7VgIdp8blkbfOCh8+LAeyfvfWs0=;
	h=To:Subject:From:Date:From;
	b=BhpgClOPgtaboPMiwQjllZ/Mz3gd1PUdaYCpIZGqFlKx9eP3fSVTDMXkEd4BTJgzm
	 Df59UZz7IZ2yj/+HWOFejXPIAO9KpS2u6qoZ7QjO7qp+D5xVhRb4fxuYGI769QaSk5
	 6h4+mkCAMj7Fojmid1FByeKogBxOMDZy2DbZttKKAh/Jne/hBvI1mVsWW6ffo5RADh
	 9GTHgUB22JdP4c5ImaetONFcyTW3sughHmRIBQD5Bq7Z91yLSEeXfNaD/dbfGzk75Z
	 obME/b9rGlM9XHVo4pD5W+0WkQUZNj5kvKWNxl6QDLVhv8RgeBA4rf/Dqrz5n4SPdT
	 TTb/bGOfN2JOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBBFDEE5C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699585368.29638.6280661920553028807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040edcc1dd9ec5e230ad68b853184d1d9d99477838c0ab9784f769cd21f804af
Date: Fri, 24 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776995853
