Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EE024022E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736834754; cv=none; b=QK6f0Utz3Rgho1K+gsB0niV9pz/RDV4g24LhZqEr3yMcs9abZvf3AnbCsVszcT0w08iF0fdaZQrh4Wz836z0WizMvgJ4D1hRQVxBNBhd4S3tm+WSCm46LHmRZ5YTTVgDMGWwuukJEX2ABbTawQMlKFqeb2jNOgWXZWv5g94WxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736834754; c=relaxed/simple;
	bh=5itq6qhS41fA1iQj2zGbVsWVfPIB/mi2bsbwz9ArMKM=;
	h=To:Subject:From:Message-Id:Date; b=Y4yjHoGsliVf8q19/QhTl9pKVUlKLdlmsLTZ1Akqz7dBObVq/lOxJv7U2YXYaVpr46BjdIPqYPqzxzXWQHaztvtqvLpWXQ0ZVJ1+yE3kipE8jWU0G1Cwv+ovERKVi+5Sk61tUeJj9qTwaN8AU09dA58wdsIZW/0nyVpfq+WYYuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRIg4AJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRIg4AJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B113FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736834753;
	bh=5itq6qhS41fA1iQj2zGbVsWVfPIB/mi2bsbwz9ArMKM=;
	h=To:Subject:From:Date:From;
	b=DRIg4AJBz82MgpvS6OsNCDjkOeZsY3zpn1KyyfHiV7F+s2SHHq1h5WjXkmC4umkyY
	 T+LiYUg9QpdpuIvN/5dxdxhRcL4Lj6LZwf1roqFskXT4pWCLQK2q4miUbHF0ADc42o
	 5Ep09aUlTKjfYw5Kp8T09MTgHGI0rKLt+LmrBIGVHlXVObskMmFNkE6WcTO7l5K9qz
	 7hOh9J4Bb8EIRckdyUF/qoHyW9QD3WOzxsGFxKifuqvFkk+2chEjp72Tv2HzifaTc3
	 iSjn2aYRNz/jpQa+m7VDgGegERT724xqyr3w5PXwQmArLixOARzZ3oiribc2UZtMZx
	 Ysx77ryTBNdZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A92DE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683475361.27267.13344305188706469163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4795ad49888059ebf8d438dd705af7195477238d9576003278fb41df7f17308e
Date: Tue, 14 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736834753
