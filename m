Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C5C3314AE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776978454; cv=none; b=cnFt8HFppId3wwLlJ2gnUCKkHEvVYGitEBItEKUr04VrP3zMWFdADWmm02a7kotQ0jwOo3P4tJ/kMlXbdzthf25Rnrcc2NBkDxQ5h71vEwmPYK0tYkLnIGqiqYXKhh+wT1iJxD6uuvDj2rsGOiBt7Gmh2TnEchvbSWHR/RdgqW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776978454; c=relaxed/simple;
	bh=2olGeAcqYaYsNDNA9yQXTt7njFcDdwktw10vDJkFiHE=;
	h=To:Subject:From:Message-Id:Date; b=aXLiDGztJZCCvYfwsJSMPaLAzrKD0BqnB0VpJrZtOHp0VZcA95aYzFxdkXdf4wudhaFlUBTbe/h3g+L5uc5xmYrDpn1EvUvrH8O/HhEuvQ8rBOHNZdZsWhHlw/IMO2FYzmIDxxoReW5puoETj92XIoVO1I4mpRsI/02otez02rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX/kq6tL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX/kq6tL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC923C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776978453;
	bh=2olGeAcqYaYsNDNA9yQXTt7njFcDdwktw10vDJkFiHE=;
	h=To:Subject:From:Date:From;
	b=gX/kq6tLbOkAPx1GHDqlna485hLI8/M4ot0vwocmfOFvwIO+RitR/EkAbZiv5VAtw
	 rk3q9IjSsZAzr9bvXYdiFlI/FHA8hi+d5quz+TFzNvGXAFmRR389LxeQH3jN6cZuft
	 cYEYZ0EC1w6IKVuXDfZTxc7QoxUKfJX608o3OZIUBpllKHVEHlnQXPD7s5P0+HXJIJ
	 YSI1PDBIt6PxhOgXNBXCgvxSO5+EhCu7NNpknPGbVaJDdkjCvO/Zc7Z84WVgbMGbw1
	 BVE/TbtekE82oJO1LzdBJKRGXy6HbVnkT7h0hrPQDtaeHHgbFHnRQqagSrm2zkXcHx
	 mRiVlBJrm85RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A5FDEE4E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697845368.19091.1968566949841797451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f3dd892f002175a1b98e942680be684fd787817e868ebfc6616d9643c793b8
Date: Thu, 23 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776978453
