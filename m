Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34341756B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706388496; cv=none; b=u/NcA1H/WJatu4HvS83oL97Xa1jotdj7jjWOyBgvQgezkEISKicjTSYbzNSSALtPqS2ShpBKjoGpY7NJdnl1JvaeTLxPqIfNzYcLBEHC9yzKAGhWbNDbbPPA02hPPEo67SZ55NpOyj682/OojE8peejwxj+LR+9t5/+r9Ijivyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706388496; c=relaxed/simple;
	bh=HXewjvN3pZKNILdaT1poKTTNErUr/+HfGsvKQviRMJw=;
	h=To:Subject:From:Message-Id:Date; b=XSD9q0MImzlsYIGOEI8n13Xk9rZDJQQvMf8Nmyt/xZvfN3b5KERxmN6URGqZIg1Wy7NutTK3k8aEMxTdQvf/eNvW5HYDfo5IxAkRBMULqX0o/zvfNPV4IL7VWLyKlhz7yNHYLzN3aYyWIQ5rj1XLn1jPZYnksif4wlYw7MysO5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyykKlLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyykKlLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA94C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706388496;
	bh=HXewjvN3pZKNILdaT1poKTTNErUr/+HfGsvKQviRMJw=;
	h=To:Subject:From:Date:From;
	b=uyykKlLPoh5tu73xA275xkPeWJiH2UJFtueitPYmEZemPHXGEtvMEqKXQBjuBx5yq
	 bHMl4yixbKKRAUeB6QSoldKnMLk/T0q5sIolJ/2thRpavnIXJGJsRVyhHo6M3Z4CAH
	 GMpgUCeG70wtDRsy6j8/HsxKFb92zfk6rxb2s5jc8Fmu4RCsq4mQPHl8W+jfRzeT8o
	 QM4ZISvzK1NLe1FcOmDl4Qlr0+QfZpLxOmsc9AnOMveVvp5c4HxEKfu0WgJwhTJzyS
	 tTR4w5lbyHXHBrucNtQjftWFI6U8UisQg4mGd8slk5KgMpnkRFNQhNBfX5cNW/SWgR
	 bDKRW98x3tlrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4D0C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170638849636.4457.14334762395085497191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a8a30ede966cf2e7668f32ce56110a0e40c9e5cc4cdb2e5f59c2277ef1288b
Date: Sat, 27 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706388496
