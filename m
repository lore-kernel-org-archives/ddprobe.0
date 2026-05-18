Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FEE45BD7C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779120035; cv=none; b=VuDSgKMQO+V0n4zAwF5Klv4v6p9SgfY+8S0l/9QyjpRBrb1V6XfiYGTVhejSupKMIPSMsyWSLmOCMkW2BqBW4NjEFEzYmoYEeuArTEswjoTGbdcjVnGQ5NzE4G9UUZPvfY3SR2RMA5kuMOB2rdRUa50tO4Vvn1Y8hrsx0xauYtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779120035; c=relaxed/simple;
	bh=Qg6+kJNJWuCSriZfL6yUDXeJMfUmLh7b1+T7hX8IRbo=;
	h=To:Subject:From:Message-Id:Date; b=mmbsdMEG12P0F3bR6n5da279/cf2KiPJRASzH4BTmwdRigSW//xQWxZ7NGz9C/8/VzSmxH9YDVRSkvTi6vgElsmBLTjwoosVaL97Bahy6HxPVd2mynv1++NzP+pD3yAW1S/EKUmpGjECzZPNOS+Pwu6/zFOQ4HYzx1qhaGREKy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwOdDnOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwOdDnOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F32C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779120033;
	bh=Qg6+kJNJWuCSriZfL6yUDXeJMfUmLh7b1+T7hX8IRbo=;
	h=To:Subject:From:Date:From;
	b=GwOdDnOmvSjHOkG99KFDNaAd+Lg/XjKrjXyo4XsPVbYYLhrKipv6ppvqRO6y5qQ1M
	 ZUcdAl6cSYCn4uYgOjTbeBUsuwZnRTqav5XR4yGE6SZASMYGvDijy1GUINNyNg4KA/
	 uVRKpinNqQGM6KK6g3dxO7UvZFBjkQR3JaH2UzThDTNiJ7wFD7US/Y7Lr3aLWjH97/
	 VWn9Ms/3S8BqrBAtyMRG+Mh5rLBuhX9ETHq1oVKgJxwyszgpLPtNubdmhFekOXBRU6
	 So8hGq5kwvDsC7sgx4N6l/5LwBy1qsORTCNK9Yz6LMS4LUa9odR5mwtAGrydSXytJI
	 OPRKaXtP/DehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB2CD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912003370.30581.8284536482562714334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cecab3f60fe8ad79ebc59af8372893de8c8eba32d18971ceaeea5eae7d65f0b
Date: Mon, 18 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779120033
