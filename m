Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E22D1E2607
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747058994; cv=none; b=sY+Vw2bZzAQIBFym7Px+HMFbxuLD7l/+9t0ZQ89f8KK2TRTG88N8AHt7UGir0qJujATucSbaPR5e/6tZf1CcfS1qoliaMm2fUWy1dzn8j77I8J8LvKdOZe4i10A5qy1yTRsQda9abzaWfReP+oT6En+bGBu0xhvt7AU85q2N5Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747058994; c=relaxed/simple;
	bh=U/rNj+mGiSF9DXK4l7agE4N2lpqiFpSuHUH9gLfLIy8=;
	h=To:Subject:From:Message-Id:Date; b=TL1eLJ6+FIALswGCKRJa0d9QIVK7O8ef4t9n4WaVVsw68xOsrM0tqMeVabYk3ch/uz5QjmrF6hoYjiqlvSnUn9CtYACv85xlT7FasgI8EPTB+hswzoh8FL0MbTfv+k8UQcL+a6qwMhWJnv5Hte9/unmwYJN5oNiudspp4lx5Ceg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUuuEGMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUuuEGMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747058993;
	bh=U/rNj+mGiSF9DXK4l7agE4N2lpqiFpSuHUH9gLfLIy8=;
	h=To:Subject:From:Date:From;
	b=WUuuEGMWdLqPUpLKIMRvOgv7mfzxSVE67FnHrk96+RhJqrdadRNV1cI8wzxsItBPt
	 xsakE8cKM0fatqwzsydDTVx5c+slSRE56q7qnkfYFeuUMlVZrUyXwpMFqiDhuE3wb3
	 Zh7u3PC1YH8V7+1BL1VgCWL7Vst9ltlNcWCnxkM+ZJ9RN8vGuFlOSU9zOIet45gmho
	 +sRtazqJR+23Sd5oGcYQX0NPykBiJzw9fz/pqvdeyU5uvGaCSxC5nBNaLGWmepQ+/0
	 tLX0CIZc6G4WwWREwsYC3h4wPl+BQnnmgk1r9KB9ChqrrqAzNWY0eX1Memy6ik4PYa
	 xJLNOpFtqMZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04FC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705899357.18456.5447402075608461235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663e4b23c93522f95f5601b0c15ee14d2b47fc37befccdc173a5d6806f49c617
Date: Mon, 12 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747058993
