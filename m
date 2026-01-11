Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0306E330675
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768134234; cv=none; b=JY4GBQJl3T/Xyak3Y0FIIEYZe3huGYlpiuDmCBj4moyTpc/V1r7Dw37andyLzrZ58N+15DifEfv7qiNpFvKUjDQFuSGYSNvMTtojP3BTXijalGijVyECipzDvjG+P16yIlDJSYLGImI7TbpKCP1F0I0shhxSJlHQYmYCW9PZ9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768134234; c=relaxed/simple;
	bh=sgy2U/nTq1CjMu0y0v4oYk1hAF3urpFVsDvKDzevSuk=;
	h=To:Subject:From:Message-Id:Date; b=Dwfir9YW6/UOKAZt+cmW3/pWU8BAfvjpoTktFBMmKLUeFndPQYTXK37JcdbIWrM46XQbc6JY7MFOBgfUdHZZ5TPyMKN2tJ7LMbzNor4bZkKrsRMBkTBZHFVvgYC+1PMNfYUvXx5x+RwzheRHkcWRcsvDWOGg5ipzkK3o//Ps820=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxhNcmKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxhNcmKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F15C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768134233;
	bh=sgy2U/nTq1CjMu0y0v4oYk1hAF3urpFVsDvKDzevSuk=;
	h=To:Subject:From:Date:From;
	b=LxhNcmKuCrqgxCg6giiB76J2J3dtrbvwDIobMVMYKyNJiMQR1JLJ8kSC6c3JqkrRj
	 xomQ7+o8v9BvplMxkiHU3+1ffet9qRPAjpk52H3l6/CQil3GSj2tENXzqMET6WaS1Z
	 9vDC0sIFYQpCONGSE/HMPa/Ec4Yt7X7to/ubr6Piujp4m4+04oqNHN8SlC2gf3XUZW
	 uQEmvlLTE795T3BJ0UhCKpFamAAyBNz+0pQcYTSlPlU+SLktCLqxAEHs0WKplqDSpU
	 IkiwjeJap9dK5+RwSZWqFpL3UNq1VhHJ4zZDaD9jrofuHANhcr9/VZynSEFBYmE9lP
	 OX25sjptPIpFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A6D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813423358.7772.8341419180196789258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f1c8260cb7b68aedd5ba631f0f1801883a4e910d27369a9705cb105ff7fe30
Date: Sun, 11 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768134233
