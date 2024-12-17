Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354811D9A56
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734418554; cv=none; b=HiDa1HwyT1Vfbd8Ev957u/h/Yxr610JRYxQTob3gnqYq1CdonK9wKAk6en5Pp/AWyCMvNPBLpsu87vdH2kqrOyiiAnKHf1yr+fXb4M0ALdi140SCdpzRJPTlDdeqbnrECVrD6JVcfkd5lSGR3Zl2lArd8dIYVlifsCFlZRVTnbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734418554; c=relaxed/simple;
	bh=tXUyYQ3VtSlDXHr02It311Uy6jQvWCPMjpqjKEERJN4=;
	h=To:Subject:From:Message-Id:Date; b=B7k0ypJTRu5mrMoy1PjtV9Z9NjwepGS7VdJMi8H/dWXF8n7dHFa86Nt8/9Qv5thXV76j1nUolfC/aLXPP+J/sPsAZ9/qENFdQWIZB+8eRf3xqDLjkmn/IBupU+QHM+80qd+FDckkB5OX0lgpvHXhzFLVuUhg2eVrtcLj4ZwAfcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3TYpXcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3TYpXcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6AC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734418553;
	bh=tXUyYQ3VtSlDXHr02It311Uy6jQvWCPMjpqjKEERJN4=;
	h=To:Subject:From:Date:From;
	b=X3TYpXcHHVzKI8U3M5vU7DbpYkvOn1AslJhaie28x6MQS1WO/udkqdu5mvhHv3Ipw
	 VuvPnLwdqxqioTYgy8+0r+Uep7ts4PYdxmJc4m8ONCW59+ifueZccUOICB44h0rxTb
	 1m1Me8S1N/UCVlIUr/5/gBhEYHmbKbrbasG1Iu1J2yAMyhbqy2xCXx6Rx3auBJwWBc
	 oPdOa4tTeeZltsBMlts7vFDVcqXkOrIVTcjCm6EKWIMOleFmc9tvi9aTbfUQojhXlv
	 3yzS49MayhLFkRff0ddkRxeZoFUhCSDxkC8i2TWxN2yYSzvXWA/u31Fpc2w4hteKMW
	 E0RBe/8S/bFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92171E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441855358.6983.7218883655680028606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cbabf67b853d6307f9db661822856a370365e6b89af3d415616c6c519ab076
Date: Tue, 17 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734418553
