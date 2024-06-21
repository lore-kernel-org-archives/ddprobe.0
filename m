Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4172746F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718938343; cv=none; b=YjPqf3QsPOOHFaUhbIHJx//Rp1stQhD2xmJcLTYlWlTnsgitxULEaO33GP5LWY5qqc7e9ZW/zCMDvAYfb4bqpV/YWq3ZtQ5ZVgwoMD/gTglfy2Yfc3v2KtTqS0x0qfYimk+HH39pKQZ9mXABU0zJz6YcDldx128YXHdDZJ/M+Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718938343; c=relaxed/simple;
	bh=cY0DjMF8VH158CI9ZF+mxKCkgNrQQoJHgO1XhDr4LTo=;
	h=To:Subject:From:Message-Id:Date; b=JSd/wgmeSHJzXmdRq7A8ax26tndiiPYq6JwhZnXEF7vOYTSewlPo7q/7y2Pr/sy3UxSS1hVeB6NVChApSDjshlAljNZrB4Upp05kv1QD3NHR7RkuKslf1k8Rv4hWwQ7xgiDQTaERg/NPoWBDpPSTQnaBXfW+yQoq+kCy+1upfio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYNiXRQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYNiXRQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8809C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718938342;
	bh=cY0DjMF8VH158CI9ZF+mxKCkgNrQQoJHgO1XhDr4LTo=;
	h=To:Subject:From:Date:From;
	b=YYNiXRQ0jsTxgpzWnaMziCt4Fld3T+k/zPtQ5upMCnk2M4oD1HyVBiMghuxFUXbFq
	 g13B7ZEKBvHvNCc+m/PrcUUkaVvyx4/ncNyuKNHXYjGUFHpaBczvZUn0Nvf11ptTp2
	 0hM+Zc3lZCxxiNFTQQpnLl5xFwiPZoiyn83ft3L12/BmxSvdirunPqu6hYeGRsmvee
	 F6mu6lquqgfmWeyMZPilGv+Y1IkvqFy4rwUJMTUZtcMVj4akWAObVGSSt70pEaOppU
	 uLesbyaI8fw66NVhI2rzRXQwM6kwrBooAZpt/WOYTRAGF/23UgkNuV3Dp7FuKW3PMJ
	 aeaKvgfQDW5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0FEC2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893834277.21004.7833282551977132640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57df02bc55cb559d91ad34dc35b07ceaec1462801c665d3dc392a9c95937d874
Date: Fri, 21 Jun 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718938342
