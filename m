Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6E33AA194
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762885794; cv=none; b=ACKSImEmVQ/PE1DIFJeA/MqSo/PNZp+pBjAgqKYMF4FI2JjctgEXJPB+nTzhigrpk5AcJXuNmfhYEnPrxOfOu/AU41ckQTkC4XsfdIC34M4p45kYZ7jEovnZHYC/Lj6I3OeFh9B3ASdpEFi3rbpIVZvk5iNhGkbzAJUTS2XTCQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762885794; c=relaxed/simple;
	bh=6Apk0DMaLDEpimZMuGiIlM5uH6ceMgnai01fp2Ix7RA=;
	h=To:Subject:From:Message-Id:Date; b=fZsP1K+RJdQjC7CsQaIoMLCRZSgO7WuJcbacnasrWoIxMXZIpwUX/vnm20FB7myuAaSgFVHW9AXen5snNr+el7Tii9ECk7UgxK+8tYHSietutPcpyuF8axCUUuR8ynQxVZCxaXjEBC9q6kYB6CUXcwR4bPuUwdjBptVKGF8Z2lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh57i90F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh57i90F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFDEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762885793;
	bh=6Apk0DMaLDEpimZMuGiIlM5uH6ceMgnai01fp2Ix7RA=;
	h=To:Subject:From:Date:From;
	b=Dh57i90F9J2WS3Yi274TXC9aQVg5lOKQHzQUT0fZV0TjTs7aYTb0iU3UTpkzVMSOU
	 AA5RFWgE7s+VxZzpghamhIxgl9l78ZtuC9xJ/0lvlEHDNGtXUAP9U2FVscNyDJWtX8
	 bbUH4gn8TISOJo4yGO3UBN53omSBUE9e6Yi5I0lwDI+blMLC24LBcvy6/I/at/3JQO
	 vGHPbFtgEZNra8Ff8Helb3qSrDrnnUF/OD+G6OWIV4fSYp9bY+iqSApj62it3Gc2P5
	 X1bPW6AIlYhj/wVThXyW12p8HNLpx8KCeOO2qLTiQzka9Kr2IqW682oOepwKF818D9
	 W20wCdmVDa94w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00DCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288579357.18193.5134848270223711169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259bc0586b302de45e79f3512b24abd2c25b757e165e9384335044b2953d3997
Date: Tue, 11 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762885793
