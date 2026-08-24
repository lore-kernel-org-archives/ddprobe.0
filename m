Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B254317145
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787602834; cv=none; b=E/u8e/X2Acqwu7hKKWl40MCCLlAhrDHCJGfwe7po/69rYqaIp9X6r7k5b6OvTphbM14Qvwj5rrriUmEi1Jbv9hw5HBh9NFM+B36smSzyPQUFQPNrKA5ZE04NhahJlBc5kg1sY0gwzOV0l7YjVTP+DC8SWJuijR681PYoFhySzas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787602834; c=relaxed/simple;
	bh=HqjVygzeCYFYgaq2kuhk+Jnashcb4SlSbUf1Zs2Htx0=;
	h=To:Subject:From:Message-Id:Date; b=IcgdnaFzaSabEz6gNyDmiRl9xa6NBu6i4qZ1C/uW3JvnkSRfXq9GBf0n4tpKVmpmk22/KeZGrzBO3IEcRlixYa6UrbTvHb1++kWI5V/s/9Zq4ie+wjVCye2nyyGfI9NtcrMDJWmPz/ifG4mKSrwBhBkj8VUeYUD+Kw8rkKn+6Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGliKLx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGliKLx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0034C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787602833;
	bh=HqjVygzeCYFYgaq2kuhk+Jnashcb4SlSbUf1Zs2Htx0=;
	h=To:Subject:From:Date:From;
	b=RGliKLx95DAll1K+0CcV2djCulhxIKaQn5CbenRDnFfp52RJbetfRxoDEhCCyjW6f
	 8HIINRVlkEXGO84SABYnk0qedvUJVOnKJ8U2ynvVJgkcQcvC/hN+LoifrNM+6Aqz4T
	 CYrNRWgUn7GYmHkd4GVdg1aFNBQL4kVFlIQPhPbMJ1EiZDTM6miMt2QTQFAHBxVJc4
	 sHxc2D582rx1QHkQac6fIt9D0y/4UfMmbiXbY4XFDHcbXAn6pM/LqIFQ+VXPP3q9w1
	 8I5DRPtcFq+TFBRdNe9CLjuehqj1DQvUesZkFcR+llXtt0+OcpoxKHz0HCk1AF/EBc
	 LjFwGQUlwUlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE9EC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760283369.20331.13512641255518395658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f94adf12cabb1eb452c940cdde1b1b0819f139e9814ce0f647e9467f67315d
Date: Mon, 24 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787602833
