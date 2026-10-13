Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D59952ED5F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791914434; cv=none; b=hGPIKdBt+6iQh3JAafyrpEj3e/7XLro784BNw7zcZrfWr66DipBpzmK/D6CL9r2z4O/Qp2Q94Ty5BFVRFXMA1JmYdqd4LJqvErjVw/Fq9xldlzBxTXlO3yh0JHna2tnztvlk0l02Ds059UX98v2Ouysi4Qooa/ovdM0JWGDBGHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791914434; c=relaxed/simple;
	bh=IcRayl+jd2t+a4XxexNElsF6NE8UAEQMcRnShzxKF/c=;
	h=To:Subject:From:Message-Id:Date; b=E2aRlwuo5Wxd98SLDRayK9asN2WTL0RYzDdKWmScroSpmQJHPzxHYBqPUxRR2TFU7YEPXjlPxNtfF8zZelWgHv4y4YyqBNEwHRVeVWE7/Ud9eHpk9eAnNnQ1mjurNfVSn0AQvB/u3DZPsR8yL1XGFUsu0PZ9fCsKe6puGLjykNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+HiV5Sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+HiV5Sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FA5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791914433;
	bh=IcRayl+jd2t+a4XxexNElsF6NE8UAEQMcRnShzxKF/c=;
	h=To:Subject:From:Date:From;
	b=f+HiV5SqWMxJRevm6Ssvb30bx6pE2+AA0L1y1X0tiSUO6R9B4JDGjhe1xYhqs6+RY
	 mcNI3UMQ3BK/dmqm5MYRQUrXKyCZ0rfkRcFjAJMfx0yLQHyu8XMMOO2ED0rFugPQ2e
	 5rNqOPcYZrgvvwwVjWSS45bwQaFx1Dhm9f402mRb9Ax8MMoH1j3POxO5AAxn9J+e9J
	 L8xSHlRTDUL/gD3Qi5HGqNUAgku6DH16jaoz6yzaEz8oEIa3yfFF0TDC9/hojPDMjQ
	 RrUL8wPjqIsDlDPMftLfPFbv5+nBGld2BBvrDkh9xj9igveGTgOKDEANG8oomtkvXf
	 G3MSTvWRWXbTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E47CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191443373.5221.17974120932919856790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87035629fb83dce40f3570f5cf6401551335da42e98635a3cc7c65cbed543dc
Date: Tue, 13 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791914433
