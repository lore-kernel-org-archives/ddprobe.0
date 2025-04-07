Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E98224B1A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744007994; cv=none; b=TcD9Km8wkArV81ckh7IKCVYUracFHfqwqJdxNhnHiXjBNodkI+VPRSbNm07s6QsKiwpA8cnh+N0odtASvuaROSHxDWH0BhcX+sX9nsJWGyAV1sNt3ajufYmuimtk6Sm98t8O1UyNVQUmvWrAm6+Vf/DgwKSpJMIp8xFNKfBjgI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744007994; c=relaxed/simple;
	bh=suGeHuXxtWwiI1frJj2kceYfQPBWJP3g7GLAjdn7wWE=;
	h=To:Subject:From:Message-Id:Date; b=u9K35mrQfTe0VYt9He/C8GFuJFq4Lqn19GI1fLXrvBs2fmTX9/txdVj2TZrAsxiEls7IIn1sXTH3EACdzyCy4YX8OjBOcAZkvqf+AaCgIRztIRPk5H2kD4KhaIRXktOHg0Yhti5aEXuZ+fbJMC1iSM4gOwkXcSpCBP2doPtyYyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQzjJ5Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQzjJ5Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744007993;
	bh=suGeHuXxtWwiI1frJj2kceYfQPBWJP3g7GLAjdn7wWE=;
	h=To:Subject:From:Date:From;
	b=LQzjJ5Q/zBFDbo0FJUPHIls+9H/cYLyIoMoloP3EVGoBc0IzME+svG9CqMsOhnP+o
	 AVRsJMhYrYJJDRqvmsCWcJl3T13rAw+h7sVvq8AMSo7/+X0PECyaf7BDf+/5ZKPAWZ
	 fd0xwzbKFApkQSqrqEssMqgZHTaVWn/VsyEip1PUk7835Dp8H0CHYGZKjzAA+0TqID
	 OxQZ6AZrvuPEX+6ZiNNYtjGPWdWZJ7OY9hqarZR1dhuAPOWEAWCJT7M/WTQ8u9+j4J
	 gC0SX0iDCyaJSuUEc+6BvE4JCLfKp+MXATaCaJ9iYLQ6UVmwZBZcYZ/+u0AOJ67zWd
	 vgHiM4qHmUvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493BC3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400799359.22511.10091353230153669711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2602cf687cc85d87028d58c76f177cb91142987663577bde9f8703acfff9c468
Date: Mon, 07 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744007993
