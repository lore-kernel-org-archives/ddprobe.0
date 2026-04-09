Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368192417D1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775756854; cv=none; b=RUVE0aMOHP/kQAkHD8kfnWQys6Rzq4BbtjgRi+dYpW0dNSV6C8a0z29Sgms+0Rd2337nEGCttyr8XQUsZlL3sSPr3Ra3J4wPhcfMzDPneV3J+QcwRVo4SM1AtUmiS+OWyE+1mMRE/aQkGVnrVVK1Q+RcDpt/LgghXqd0HIhbh40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775756854; c=relaxed/simple;
	bh=ZIwVJwJIbH4gNGRvuEiUmrTrOY61DohqSWE/CaPoRMc=;
	h=To:Subject:From:Message-Id:Date; b=LB/xgzx+ZgO0JEHjQHZUz5kpfAWmoest6COXN4TCwDDJh/MHQ+gy2waehoPCFZ5xWJZMOVkdk8F0KOebJqsShX2fCtNWeDWrYIydS0GsZsFrTDRNlBsLvpMfPE0YSj9k3w/dBB7j0gyrIT+TDA9xiouBJwMlMsrgjuca6pOFvjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5uIewU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5uIewU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD15EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775756853;
	bh=ZIwVJwJIbH4gNGRvuEiUmrTrOY61DohqSWE/CaPoRMc=;
	h=To:Subject:From:Date:From;
	b=o5uIewU/ZaQT/SH0cI+ZgU87LKQgJuN9uGov3dl6lDd2g6rqT2/W6RGc/AaZOWP+J
	 rZg01Nj2LRkvfSjPHiK9T1cMiCCgE0tsgyY43TXaPmhvS/WaJ1GY/pWdn/7FOFyrUA
	 T+kW5ufguKhGUh+wjdssYjDMTI3B0le0l9zFSPwBJYbDXQ4WNqXMXKyVRHUlRE3mKf
	 C11YXnIU5XWGYKwQ1/OKItWKRUJgaMfvWB/BfB0gw51ZTygHi4AT1TY3OllmbMSfJb
	 o0MT+hj3xHL8XPBkI6Y/qklj1dR8/atkRhlKLuYHe2n21lKpmDvQYcP8DIPT/9pBKp
	 Js3B0YOkNAKew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B330DF364A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575685370.13590.14048360171359919879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069a87026bafddfe71317a4e34b123755862034b4a32dbc8921f7a048934e091
Date: Thu, 09 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775756853
