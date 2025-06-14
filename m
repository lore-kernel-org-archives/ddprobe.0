Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E161547C9
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749922194; cv=none; b=hNh96ndyEmoa/qnC0ZkEHn2e7M3WbmabuU4dcIXzdCiITLvSE7NbNeQH35Mnb/kVUU9u2FhepbwCj5mp6OOKdC4pFmqYeMqCuL9qResN2FshYH49eWSIwz3U3R5ly8+TdszX5sM0d+7sksSbQtuc8vdpa6CFH7K8CJdC+9bCmyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749922194; c=relaxed/simple;
	bh=xPEbdDpWN3U+uPyZJPZZeaGkq5SyHiGjtRUEfvNc+VU=;
	h=To:Subject:From:Message-Id:Date; b=tN+YGod4899HhiWAcwCLIRmU3J1JY4IpcgsoLWWf5imOnZbJwPQDyhzLA1P0lHN1wu/EqW+ipd5pEc6uLz3fMWlwIHWG4xJTgPzcR9wGLTBtAQWmmFVove3J/NURt6Zpf03Xcb+fUOKNLiMUTRHWJDj1M2l4S+mrkpFixkrfQGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmaeFvXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmaeFvXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F879C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749922193;
	bh=xPEbdDpWN3U+uPyZJPZZeaGkq5SyHiGjtRUEfvNc+VU=;
	h=To:Subject:From:Date:From;
	b=BmaeFvXwUNtb51j2Nn/q8DF8zZ/o57cHMV4CZIQjpr8GpYI7q+dQMRyXz3edErzEA
	 ySYRzbvrv4msLLzIfWW++d1BO/S/iwGaCAj+EUycJTQkpQ5WRwyIAFr0xEsORnUQ/V
	 7vY68prl1EGMnNUu7CsC67G1i/bVS2A9qGvG0F6yICpDhLwyOSK/KpwZZ9915JVBOh
	 aBW1JtoZ+ZkHsL5A48GkBjMzBmi7x05+jNXWRnDfyjkp7PEsYU29t848PeZf9IdNzY
	 TpOht8LApRGIqfMVMGKxi5v3+V0dbl3wVCmN/Akf4q94wvFA+K/Y289+E2MnpnYPlW
	 aMages0e3+jig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F516C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992219357.32486.2563438731166332812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a723aba48ac9818f7d3d40bff8adb98c3bec56e4c3bececa2eb749b7672a9f06
Date: Sat, 14 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749922193
