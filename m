Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438D415098A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737459954; cv=none; b=GykzNJvxxWjyiuviM8rI4KUODINJLPK3k1+u3x8VfwKulKKOhhMxa9I8oqK5N5dAWNHi2lRED0Vsq4YhB+Bp9MSiGClG3GeXZh31JZnxgiR07AnFHTyvaJGwMnoEFTMG90HGk7I/AwIfwgsF2MkpcHZZyLwvfEdsR0wfqRIqPCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737459954; c=relaxed/simple;
	bh=ACcRsN+uIqFSjtZoQAyUgjvMa4DAkGnYtqTeaEboyB8=;
	h=To:Subject:From:Message-Id:Date; b=dcns4aMyRkpuLtrz51RJzlESuNQOmZEoSNbYnWMHkh+kFH0GJSLqlMCdYKFmIynzNSWTn00I9TEWILBEAATSup7Pb24II183E5x7y6zACBT4oMCkdlF5GIb8s/0h1o9a7AhiL0pa6XuQUlPv5Mb77VZHE2+vePDINvREDauriN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1l1I8WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1l1I8WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BC0C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737459953;
	bh=ACcRsN+uIqFSjtZoQAyUgjvMa4DAkGnYtqTeaEboyB8=;
	h=To:Subject:From:Date:From;
	b=Q1l1I8WUesdw5zNzLxHL2ujfys9FZFkTQ0Ms7Idp4AJrJ4sNsU+Rx3GIaAxPVUpLd
	 gms9+sLpRUBFnnJ7TwUX4Ejn1AZanKfLPUN2cEesvk0tVBhkEXwI5RtYslpq3MjWmY
	 UorwSRmRN2ncv1WBqpLdFAUsPyB8ppImcT/HMB2vvLBhD/f5f5bP4Moc6PzgV+Rq9x
	 8V09tceJpN0KaFnvjLGmCo5poGXn4oVu6TqsaEtS/iDIToL7IfattJQk4vZhwADtXM
	 4xIflfmItWIVs9ZmwbfBsHjXBv6RD/NjjQg+DlVkiKeqWJUiOe5s/nXzGzmTMC350C
	 LFNZanbsaaH4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B61EC0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745995361.27269.5348116286016615296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c865b73d4ef57e155245cf32895cc5f83665a1984e7937db66abed2125eacc57
Date: Tue, 21 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737459953
