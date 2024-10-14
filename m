Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C937A135A53
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728879953; cv=none; b=AUV9uYDM//dh2BsNox2/JSLZYWJs7OCIR7Poz/+aRKOkahEJ0YHLWVdhh8AFybcBVaFG3D08NQgkZ42J+1AQlp8zw0/5wXv3LWdVagg/KS3kVjHfNStm77ZiSeEANZndWhdxMu2EpY/aUffaqnbZeVdUlDmnNYXWtXpyjZDa2A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728879953; c=relaxed/simple;
	bh=HgBCRvXyYaOxoSpI9qOL8obmm7mDL+FmE6OgfOboZmU=;
	h=To:Subject:From:Message-Id:Date; b=YORJaLsAaysGyWYkrDTR1kL5YqllAgQv8Zsv4T916D3UfnFc/lJhbj05q3MYbGnw2x9tLoGrEoB/a4wGKPXbQDnooRmjMbNZtXV/GuqyheBc1TQPk5QRv6odL8wmiPveZCi4bNzduKuXCWnJiIpkoGll2/4yJPukSnSRD5uMuv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM9Phlj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM9Phlj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E37C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728879953;
	bh=HgBCRvXyYaOxoSpI9qOL8obmm7mDL+FmE6OgfOboZmU=;
	h=To:Subject:From:Date:From;
	b=cM9Phlj+fGQMXupUFkr4Ycf3sDXZu5xgrcM1ocpuMOHoibReVJST11vc3FiV/2Y3r
	 V5mFwZu2I525ZAeHFhcM+ioABCGILBMWxEe8R0wFagT98awgi2Ja2k5fKCaHIPg6Gq
	 frm2DORe70yxF9N+30s4fhPLHs4u+Pb7t1LvXb13cyVD0JFEk/CUgZFvRERVNTXhRS
	 L1UxLxDYC49fm8JlyecTwp95ZXNc7cir0RKyXQeqPw9ICdwGk6CeC2gtABaK12mkS+
	 HI6QVNYebdV8iHyHmU3/MbCF+ugwsfYX17fYsSKWeHDrKOEF8i79NtJf50vOyfTWNN
	 VS/oaFBuPBTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F9ACF2590
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887995358.30891.13030279050943949285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4d7de015fb4a651ee4899d04badd0ceff21939598169f16494030d5ea429ad
Date: Mon, 14 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728879953
