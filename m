Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FDD8C1A
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712975963; cv=none; b=c3Wz/9iuDPIzJzCRRqAkX1XC1WJ1+Esj/7hCLi/5BoQZkPn6nlE+WjZyyJcrVdKtor4Ic+zn7uzY4LGWOMvlfGxeg8E0JFmNw4OGUVY9MEL/mP2XwkVuuT3VPbgiPJ69TZdoE2xuvCFmzFEPX2bnOkjGWKc7YO2gYxGAIs+PYCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712975963; c=relaxed/simple;
	bh=1Y4+L6l9nWrYiAr5DcrC7d9vax8DCaZbrLWI9kmNy6A=;
	h=To:Subject:From:Message-Id:Date; b=GuMF2sLzMXU97ggwTldaTarEMPAJGqVdvuc08f2HAroluN2ReL6q/5Hajjx+WgEqNC7hBq/y2sL0sGxLLQ4Ygf0R3XHDG98zhkdsQcrvPEt45QTGpfGpVwlLq17gAOCjmcLkNm3LlojG1F+UOPgL8sjsGINMj3afcOvoFW3P4rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn7r10mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn7r10mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1D0C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712975963;
	bh=1Y4+L6l9nWrYiAr5DcrC7d9vax8DCaZbrLWI9kmNy6A=;
	h=To:Subject:From:Date:From;
	b=Pn7r10mgLwsVT5cGLBWavdV0cSUAFdKOAHajX8334Hn8RBJl4YAJpOFGpkE21Omd7
	 ILE9ZJqiX64+MhJH6QLGrwQTRqGAvRF9oOkHDjsZ4WQBhSyQNrjTs5iBM3WjuLFisy
	 mdOVb9skdCk4WhuKkvNjilDZLROIioXU9aSBMLXiTTbFDopf6aeYWr1s50EuFul+Cf
	 yluLtP4M3tyYgLlJr+tprqS5OZi6fb3Tb5Wca6s7MowOE+keu3NxiZhPJ14MXAhWW9
	 R0MZORaHEICPqSDzqAZK4LRrifgFuVCvvpGXxhkhRGPe8fJjKxYWWPbhTxsiRpg7sh
	 uj1WYNlxgtWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF54C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297596278.17623.13891874103929612637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e230e4624e84923412660975b1513b05066d58f8f2e5b952723756d060d80e6
Date: Sat, 13 Apr 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712975962
