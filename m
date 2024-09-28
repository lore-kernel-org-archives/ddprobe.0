Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034DA2261D
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727538354; cv=none; b=ReFwF4DG5psRbRCsal10t2eysU7BGeXX4ceWvyPvC/QC1XD1z7/+h1dpiAy4mMGi3tI1Rf69VZFYEjHatw3DMgpylLp0YFwwGkKMYsrVQ/y6gENVv7Zc2+CD6LJWCd+RNcxEP5ttcFYs7tz6iYlvRlBiXI3YL/o4ILXt25AUGYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727538354; c=relaxed/simple;
	bh=ixX5hZ85bUPs+TZVW+T/VRojZ0wLQWXvAO3twDaKkHI=;
	h=To:Subject:From:Message-Id:Date; b=VfpTuPDw3OtFGEYtNvv/33Wqha9xM61Q9kGWWNQVYOWI8la/L7fSSf4YX6U62JzN+cwYcPOIQ3eCOETqOwQ4q05R3hv/OaH3fCuUJhyKmKyS5iRgqmN/3Fsz8zzlarHsomqdFIK7n86n5/u41tIMcyANq5m2JBibm5ZF85CG0VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQtRIi7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQtRIi7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1291C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727538353;
	bh=ixX5hZ85bUPs+TZVW+T/VRojZ0wLQWXvAO3twDaKkHI=;
	h=To:Subject:From:Date:From;
	b=vQtRIi7Lf+5YvTLk3WWsv02BqORywFUw16dNZMjOh0mJRkTct5MvAzoERlTd24QZV
	 fn3FYTbmJFH8ZjX+VM8kCa/5rsu0SvVefxuRMP6S5Sj36vxMWZhNwT83cjJ2exIV6g
	 NhyBidDNVCuY+mGmf876ZZMD63sv4Wue805QAbOzurhyWuVlhwKwtNH6lXQ8bTfvAt
	 lyjZPEMo52Hj0NvCshLRa7fympDHOCVgjZAZ1ebYweyv337Kq0Dh0u7ZUipoaVC2ut
	 Uv2mT+R8Gp/hLkX3uUIcnQp9t3IzS5iu8Kiu7tFND5AQjkvX75tXpray/w3DuBazda
	 jsERJJ59NMQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91801CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753835358.7453.663338447477123657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c926994a6662db5f7ac15547776d05fd2654fd59fc3183b7f510a379696f671
Date: Sat, 28 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727538353
