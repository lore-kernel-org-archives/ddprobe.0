Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B1B336ECC
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764870773; cv=none; b=ruN92u2uwJqKS1+78anxmeuDaCipLNNusooRlDXBCOvWga66NIayKZW7mwidE8vMz/BFPSqvE5QY8J1jLe/PxKD2aRz8HJiCSl5tueASpYNj99SIPNTC6X3Xmc3OhZ4qnGgwlwoaEbWTrjaBSs9CiBAAjskbZSXvWgZRtC2ivc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764870773; c=relaxed/simple;
	bh=UrgTXv1IN03/bDhbyhgD6UGH6+PSkMyBv/sEJGRzPuQ=;
	h=To:Subject:From:Message-Id:Date; b=HU7mf+WSjwmi7k7LFnc2wrZ7TBzkwJlM0BHgFSRgQ/edA6BplVqxWeGd/KeStKCQOXk3BDmBHtTUx4OjqfAUhkXYHr/tK2jn5wnMeNg8uo2UeOdZm8baL9Tob9OZxWzczaA1AiVPhNg2qcs7VFF/2jWsCXgGaOIejL7FlzI55B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYuESXk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYuESXk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECAC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764870773;
	bh=UrgTXv1IN03/bDhbyhgD6UGH6+PSkMyBv/sEJGRzPuQ=;
	h=To:Subject:From:Date:From;
	b=dYuESXk11Vl/P7oKS8HwSGBrPM5Kllxy0oi53bvMAjEBtWTIfJjzycqm2jZKVc9OV
	 hNo6LKuxgA0VqxaHZ+pZQz6qMO8MQBvkOyayfenooBzuuVfSb3LW3z3hBwF2gTreTb
	 GUjoHdG/hSSd9c677p1aF/MH2CpTprBvSNiBtfgfS+gsyLobenlboIGIFhRGDfyw3h
	 hFXXejMBnY/LH9Y1TdxjROirJTAiyO7Y/IWFoPicM6xK6wPeX14UKoe+46Rdnps6MR
	 ezyOeZ5s6hMwWH7sryO+Uo6yINIx26fl1whu9e5cA6JHuJn/shv3pBbRv9NA+g3XoE
	 Iv+FcMsc6v0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95365D24456
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487077360.22180.1731880719339519280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b14a1bf80b912c70e18fac50a63edbdf9b5facbe95fb647da4b5371a3a78fd
Date: Thu, 04 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764870773
