Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F1F3242B5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776968854; cv=none; b=SYohvUXz0UFRoC242c0SzqtVMjZGJXnsWpEdu3Zq/Yh1I2yKe1yC5j2pLRtIcN+RmJrCxSwytO/EHnyVd3U492DSj27+JsKBcqJaNJfcemfsgQtZunUy4yRLDYf1kHMj0I3bct/UvHmoFSKyeJgE56Y1E5SXk3PgqpW/nxQBLDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776968854; c=relaxed/simple;
	bh=ktLEu+I0jEee92yyc+cm2oyrLFE0U7/pCcLBfI16xhs=;
	h=To:Subject:From:Message-Id:Date; b=roy24rFYCC5QYEw4EHY3JB8HjVwQYy7nunYKtml8E3lZXlYlMp+9qz1WoN0ExKbsEZPl1gQY9dMsj8EY1O5fiAwnjtskKI6+/Ge/A/aYgIxVC2nRpFdYaQsK7F1ageSwsn5fAaJmrd+dsKvDjcQ1d8dwQR8XeVnYR1PyArCAsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgTPcPKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgTPcPKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2D2C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776968853;
	bh=ktLEu+I0jEee92yyc+cm2oyrLFE0U7/pCcLBfI16xhs=;
	h=To:Subject:From:Date:From;
	b=GgTPcPKuulHcvSWBvFJV7+wGGktkBI71QO9XRNREZWeSk3A7iXGULVgPQBvMyzbSV
	 gk5VczOyTFYk4glJXNwDepsSaNN1VTigqAy+kwGrl3hlKWKYihx5dPECns8hoiABq+
	 gH5Oxwy8MD1x1bJWC6siYqVLvxCjlZc47D/4mjONNE2CS9g8qQl5eQHJT11JPoEz+C
	 hWNfeSiguvpMzHKD+iulUZLsR0jhjuRQ87uxLzDhg3uxHoN6J7ZcI+Hoo6tGDKM1Wj
	 FVNd17K7J6GQxineIV8/Kf1gk6l8YakOic9wnJnrWhJpPoBioBZYGoSGDFzGJqwxvP
	 Ljyr5AxIw8T5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5FFDEE43
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696885369.10469.8800341509245726371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447479e5782d99e395e26dc56a0befe41c8f30b9400e1e65a3d63e28750c48c2
Date: Thu, 23 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776968853
