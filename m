Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF08387571
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774888494; cv=none; b=Lu6riOuByp9HaCbVMDu8qpbiJGh8uItHf/VvDYmMTTE51hl6f8NHll/hlZqwAN9O/D5AFAHLzKGCEUVvY4D4BfoUbSM7FfJUOCrgl8JmjiVLslxTcXMDuyAkR0X0R0IP68gK8A7MZEi8fMYD6NV//ZuU1RYJrmmE7tgFk4sYrxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774888494; c=relaxed/simple;
	bh=o+n/jAbyBrAOaSUfS6mRFhLpGk6tYf1PITybAP2qrj4=;
	h=To:Subject:From:Message-Id:Date; b=V3iqNwXU/uTlo0ZIfl7WsZKtNvYfSR1r8ijEtEpfAhg6msf3pi1R+N0WCP3R1QXxstPgMr744sle9Pbf8YDfQosIZcZ9ZBQRQpqz8bHmKnWx2ANfC9hFXcLiavXGN9pK/UfSAcLRE2+qEDv4qaJKdg2nHe5kXb/5b0pyyCFGsaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWtbdhqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWtbdhqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C44C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774888493;
	bh=o+n/jAbyBrAOaSUfS6mRFhLpGk6tYf1PITybAP2qrj4=;
	h=To:Subject:From:Date:From;
	b=QWtbdhqja+Pa1YOFDzSSsCA5XmMusGoc2eRhF6GwX5+zU4/reuZJCI5aeyJHwvR3F
	 GkMdXRcmBGFB7RvQRDtO9uYtB6jZUTPwtDa3vlpKmwzv1KuwnSmD2VUyBBdm3AGwq7
	 XRts+0Fm8l6kcw0hpq+6WQ1zzKRN35Mr5SVOxJ/W9rfDr+W/SAstW2Venk1Wo5K3Mn
	 GrOFpz8LUvkcYeaWJMg2VBNIeIblptOtKCel6AZ64ToJgatDmTLQCmYQlwtnfhGPWh
	 JAkck1TtQVV4c7qcP1CEBD1cxW108zU92Te2GZMdR8b1SYrn4itpX4gpm0w0+8IdGE
	 l9hdkXWTVRhgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E681061B0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488849358.20329.6840290282113912235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61a5177bd81d2f94e2f371af39aa9896ac6d999cdc16663fb94f2a9da7fc9db
Date: Mon, 30 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774888493
