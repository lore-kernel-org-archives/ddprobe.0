Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239572DECBA
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784394514; cv=none; b=f5bNpHtVMn66LrBqVqF/4OKFBLjyb6BzE1aaacQO0Fz5Xb0vNHc3WGpxq/NGVDC77poom7j7XKKfGWP5kMdAs+NXP7F/YgG95pELhMbkNUif17+inLvLaIBezh36cFpfzIaA79VDMx39a8Z832EwcaoE+6zTKis6uPz6fNAet/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784394514; c=relaxed/simple;
	bh=k9XyKo8Vn/yd0zQN+nKIzfaLakOniNvG2AOVc4AcF/c=;
	h=To:Subject:From:Message-Id:Date; b=rBPkkOKep8nBdsAK2XShFQbZ6sLeDWpn/CMzdvlhbmv6P5O8Bp55LdPiCMrQfgX+XLt7HTGkKCIjw6qsbEYkOpO18x+kookY/RDscCxQFY94ukBCtwjyrHWl/dFH6GdEtDtFr1PTPxrrg3wBIklMXOJ3T39ygKwGANMJILv4WB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4s0cBa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4s0cBa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6DBC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784394513;
	bh=k9XyKo8Vn/yd0zQN+nKIzfaLakOniNvG2AOVc4AcF/c=;
	h=To:Subject:From:Date:From;
	b=I4s0cBa93mLvowQztAy91quooUAG9dlB2uGfHCobVCQXUW6QRHLjP1+MRFbhrU3hY
	 gUwQGl7U0HxA7VjH5N3RqKjH4a2XcyvU8bbNqlj53/1/Sny7K5pui14JqhE96k+jkY
	 qYZChDjMZGWSfJQTePZAFaJG7OzM1lxXOCIpeA3RIih99VHk8WDSERVU/pIP7Fd8BR
	 PXaIyeiBLnvvGFSVNfXzCLOjEoA96USDzkBAGz0mMpASaUDkMNu/E7PiZvdwPJbSIt
	 Yrt7M+vbLSc89aoaiS8yxJpRB86E/q3l7kBX9rUpYq2rG2TuyP3+1YI/xGqTf9PfZK
	 beWwGs8gnQ2Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA4FC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439451368.13077.11970477892630224214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337aad372a67461e3a34df5977191691a71ce94cf091f895ecce6b14af46cee6
Date: Sat, 18 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784394513
