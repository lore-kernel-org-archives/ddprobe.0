Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89E71F9F70
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756435793; cv=none; b=g9cl0nup5GB4fTKLKNTqtN+/MSrLL4h0CEssM3YD7EPdXHlQwQiWARdRXBW+eR2t49s7dtw12QY4SyaS+QLQcNqCkboTntWSVzRrdbLhzmxhfGGQWHt2XX5W2iogs2LIOTGzwX+cke0X85AXv55ZmZplgdMtZOhZtbs1Y69p9oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756435793; c=relaxed/simple;
	bh=pFkZAD9MpgzGaS8BjFxmV/dCo8GOfjpo5tExP0Hg89g=;
	h=To:Subject:From:Message-Id:Date; b=rjdm85iEmoOYxfkmXF92XbGsYRIJVSaosU4eI6jbYDuxR1wFqVzDfJdZ+V7+d69kJhiESQzcFAQhR7YajRSq5nS6yuk+h4iXRBMihLgLDXuog0tLnLHFVVCu9Xy4ODKwpscl8ht32G4gVULm6f4XQdsReg5bszr0xE10Kn1p+WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3BIFZWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3BIFZWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9950BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756435793;
	bh=pFkZAD9MpgzGaS8BjFxmV/dCo8GOfjpo5tExP0Hg89g=;
	h=To:Subject:From:Date:From;
	b=C3BIFZWeU54KgQc5S99fg9VuYASZO8oWuXYlAMYttfV/pmv0FWd1F0hXKzlyhq0yb
	 Q4T+chWSCEysdZqF7gs5utMNVo+VxekVEgTZcuIrZEBjTme1C23XzORHVI/m48sF7c
	 /1xMTC8kVTb6+pYhN/d1jVK7xx3wPwgooRr5N2sVmsNMsqE9GLi4xBFGegsY1Nxb9U
	 LOC7OyDhkKau2aQ4DYXglXv5GkUq8jCBBH/GN92sQc4ZAq5/bj3rkhotSiqeKAV+ng
	 2cNpFfxveXtr8bmMm9iXxotzE7cZMkAWlsEX1WP3RX5oyuQquNk5salt6+QMGlp2HJ
	 GT/jPnxrfdTTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F825CA0FF2
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643579358.5157.2270138876359442861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5df63669f80ee32ab2972117783c6ff69ff612ca11b61f1409cd330b189364c
Date: Fri, 29 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756435793
