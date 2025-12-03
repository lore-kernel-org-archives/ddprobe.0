Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0FE2F49FD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764771174; cv=none; b=dD/U7WJyM+bZLc0g2oPUuE7TPyg9x31qHxHAPSynkrHourfVbqbjJsP88pDhcDYRUMNkKpU/KYcrp+q0mwvbSpTmB1lmcAfTshtFiW8u0o/RiCFdtrOj7za3OsZE0VnqpybtDDSLh4Onky54fs0SvLo2YWUTHTx+fzHRPLuuTjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764771174; c=relaxed/simple;
	bh=Vrz2nf50MteeVXi93BvEQYO9H3uLoJAfwwI2xuHYZco=;
	h=To:Subject:From:Message-Id:Date; b=NirW9Zx91+3vpLa4KOf/g0vo/PvvwRrhMg7XwXLFGXy0ZLrPUJBOh5E9y1B/Z71Q183DHIbRCgrC31rbx6WpwMA70Y9y3WWSKLWxYIoxkaAKI9cDc3q4TKRhVxnVfiI9pK2WPsne131pkgSWVFohOYBNWSNSI2w01hD1xJfIz9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP7ACnH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP7ACnH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD2EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764771173;
	bh=Vrz2nf50MteeVXi93BvEQYO9H3uLoJAfwwI2xuHYZco=;
	h=To:Subject:From:Date:From;
	b=mP7ACnH/Dz0eALUGXo8EO2UajVQodwOy5rCoy5RNc/kZhfB+kD7Uml7X2zLutPEJi
	 QMGy4dQ//JGKmVVwgej6r3+TIx1X9cpqsq02edTlFaLipLhBwvBm2Q+SXaTHSyJEQX
	 omb3uUjGmP1eYmMqcNsraAMqtYcOrY6CkUQCsYXusei8ije8ICuuYpI43g6PTVmJN2
	 lM131zhXPMkogHJcm/9438FbS2v/2q6Xw2O2K8TAMvviR8cffvabNDAjxItfdcCRd9
	 zmrqM3Vl3wsP3duvUioRSuWCKxAzW69MBgKIXgRQufo/zsFWGeiZqhQSNwTnqm6GpZ
	 kQYR8BqDYDYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91412D12D60
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477117358.17110.8951360631833778058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2155718557239f24b60c01f0eccd98ed4c572abf0713bc956d509d232326474d
Date: Wed, 03 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764771173
