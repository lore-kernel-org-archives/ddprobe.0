Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8048F40
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745416794; cv=none; b=LuWiHbNWIVoemLhP5xlBB51N9L9ROvzwP/YES4a1236VPc3Kw/9hiCEJD56nkqV/UYbdhcuOmjS0fUs6YiKMwNwsGWxeloxPGQP43UUYI7uRMg76iiOE43gGvCdI7CcyUwN/0DIVVUPrbn4L6rNEvkpA/AoFjaX5CF5gE0ZNzc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745416794; c=relaxed/simple;
	bh=/Yn+w/7VgW2W+hgH7/dT8fpcsaEHxbeMGJrSnYQriAs=;
	h=To:Subject:From:Message-Id:Date; b=QFc8izOgU0t99iUMQiP6fJeSPkpcRGphc+TtsEeiAx2N+50dd2z/1zXIjY/SsESrdWi7pIbVKuUcqQYgEpoGLW4Y1QpH8IrpJnVvbzVQU5mRlKtuOYdXoYEFfYHkqsp2VfDIMZz5oJboXvWuXlZzTbxsgxHlMOgXZjC5FHT7CvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V62n1FWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V62n1FWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745416793;
	bh=/Yn+w/7VgW2W+hgH7/dT8fpcsaEHxbeMGJrSnYQriAs=;
	h=To:Subject:From:Date:From;
	b=V62n1FWp4Y2zpuNF7GHcoq5mYQraQ1JNWX+dNENFFdz1pRcQsW5TQukhLaCklUNXJ
	 5APhFsPTKrdiQphAeSerrknmP4c21snEYIsVZHlqOEkaoBjJRxnME5Fb8xrN6jWF/o
	 tuwZwYc3Wsprd5UetTFpAsgctD64TKe9tV0tI7kYN/bni9iNn1PcvEzCcb/YRyGTJc
	 0lbL2dLYo4Xz8q7kRetoG4Lb2YkNsw9B5B5dLYPuN034IYEICuDQHoVhSmpmHwU+WS
	 xZg5dL5ts+zVDv/vShC2CT58SiYJ99u9bc83/FUYML5V2SdFoQCAVMsfvPF75q+L0N
	 fvOtV3mBaAoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541679357.11499.4480281975061525944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d66a8671bbb69024402727e74129ff48ca4db5cea209f5389251bb1a4a07291
Date: Wed, 23 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745416793
