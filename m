Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7842D8DDA
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762825794; cv=none; b=sbtJghT1lyYJ+BNAAYjM8YRQqrUE+UWoewEO/V2rPEXBTgRzAP2BLgN9EqV0Ry+xtZMV0vssZFdqIUPysO3PAJ10O3DcT5DKxAawxrByCE52ivYW48sIh7iDugS8vAHX+2uAbSIA5QEWml8eFsDvVXwYFzRid/UN6c8fLASQ3YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762825794; c=relaxed/simple;
	bh=g/7kNJNlWnTygTpfF6RgidJei+nBHp59Ob3dAMGhXSI=;
	h=To:Subject:From:Message-Id:Date; b=Xq9Ey9FPtGEXCrQbAim/x2ThDKHuBXJlRSdAMGFFSOOEViYm9KrZxjBonhxjwU19GImhkIgc6Rl0aXx+uweU2K7qD7XkEdqdRVM3y9guBsQACXPiXpH6U3Ff5J5BFA4yoA6fC/tayRC/xzCgD1gb/55E6skjKX1OjWNQtW2tICU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fM/DxQ1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fM/DxQ1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F462C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762825793;
	bh=g/7kNJNlWnTygTpfF6RgidJei+nBHp59Ob3dAMGhXSI=;
	h=To:Subject:From:Date:From;
	b=fM/DxQ1OKjyng38y6yfioZcixhFXTytaGY9A2gQ+56C71MXk2lpNJg9+RQs1Sr9/2
	 oaGs0UNf81w7wjF2g32s+lEg79TrQ4EaQLmcjkk2lpQyP426a3OwkJ6cmx6idFeCXw
	 cgFLY9XXV4hc5Svo74zKDRwANNlyY+finuV9t/zgMHP+IboM1wOvgz/m4zKa1zJ2Q0
	 cYM8lCh/PpdovTD7kOw9Pts+CGaJDRMsxI7xaoySUP7B0smwkjStljLsrV0YhYtX5a
	 FOBrnunwpge+Bng3Ttle6W+36306hhwGL+MtjBufxw2/Kx6Ey3GBQFM1Rfsgquk6Rg
	 D5Ct1GUqDW/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B73CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282579358.30599.6581385593819291148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae595e30a6c7f8ecceba337296c1061e411e62d6cad12db8177122468b77247c
Date: Tue, 11 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762825793
