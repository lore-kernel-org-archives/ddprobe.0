Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471CC1C860E
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740978534; cv=none; b=PvhOyIyLczbKJWLS7Na/KmoXZjhz48d+OGPYCRGxcnshOEK950GFAiP7eM9TcoF6a357gpk7Kv1bAwxkOnCVBcxHu0uKgt5TwK/5Z3bdg6PMYIsHOCnr73a54YpvpZh4mh3nK8cOMVOQUdT+XGZXO8oUP0JTJf7eUTeDRUl1RcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740978534; c=relaxed/simple;
	bh=YF3VEWnqqNCoTMLCGLTt6wAHx6Q+bHBHFI0tExjnptk=;
	h=To:Subject:From:Message-Id:Date; b=NisnK+GT1bq4GQ14/1+85nKlk4CL/0GJHGw+Rm5ajJdnm1EPICJ7fdWMOMVyAvzGNChD6vno0ENN5I83xzjNjhY05cNi0LX7eE/5kiyjZectWVLLHSMEx0ZrSVg+OqFNmYJGWy3AUfMGYm0KXykdFoOpfE97GccEOK4rbETt18U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOgEuAOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOgEuAOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D8C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740978533;
	bh=YF3VEWnqqNCoTMLCGLTt6wAHx6Q+bHBHFI0tExjnptk=;
	h=To:Subject:From:Date:From;
	b=LOgEuAOD3jy6x0G8+HVe7oA2mLWr1HV5S+U3TLQHxtX47d5fXG6BQd/Svf5nFEgce
	 2ZL5+QedoMlWQYQUIvmcCYoIdC3sSC5/gYrrrlADlvjIv/GRqvwUOeJCqezGbPWGsl
	 YePkZlqFElwR5DzT2SLejxOKR9S+Fer+Et1lRMJaY2wTr1kdl+zS3DYKej0SBCY4JZ
	 zUgNH3K4cg0HjvKhMaH1SnfSQBL6TK/ONKt276pynP/xKE1jE4/vFBfr6owr2Pplcg
	 LFGNJSRurhDhcTmWBr30D6AVLq6jwFm20PWlalM7ivs1CGrybiy3HTRNyx7LjyXE9M
	 C8YTWFa8pt0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F45C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174097853360.2042.13490117362021795976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7a97dfac99ee00883ce0c3b4816d689bc54a3d4cd1e9c1ee10814a6d9c2a3d
Date: Mon, 03 Mar 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740978533
