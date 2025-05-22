Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2600B33985
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747889394; cv=none; b=X/guAy3DKwA0EmbJ/bYUk0qPOBC6CYaQZVywEfNuSOFWi1EEUIJwLTqJJr0xz6nDv+SzSIukQoBDAU2tuhBJRQtz0HfpRtC7myf0Dl/oDZc2biklDnJLF+R3shYWWhO1R/mrCo24Sp8ai1CGwd7+OTabQOeNmi3JocGU9Z6E7P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747889394; c=relaxed/simple;
	bh=Tyj7pNTCV40urGazO9BdQd6/xMSiMer+SrSAEHwhdKI=;
	h=To:Subject:From:Message-Id:Date; b=OWRxxgkTkd0xDa8cnOnsuXMmZ/51SZSZYqBOzIV5QP86z0is5nhhHYBSdgmaW5yn15UHAz4o8BmoECpRZND/RKTgJ4mfWIy5oqyLYdcJydUCUUwDpI4HmyIr4oTKs7B3K3xNdaBd5+VitaEKgCKwuU/B2aSwbf8f22vNg6Fx8xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYD1DW6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYD1DW6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9B3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747889393;
	bh=Tyj7pNTCV40urGazO9BdQd6/xMSiMer+SrSAEHwhdKI=;
	h=To:Subject:From:Date:From;
	b=XYD1DW6lyYaj2nGRm+TOxw7byttuDZItTev99vmtMH549xFAjtCdaO+k980wUzaC0
	 38pslIXT5vywBwmkDHceOlI3NlbsdYGiW+7MpRz+TVWdnUFyQaQmBEepLN12FAEp6d
	 UTaNvaUJNSatC1D37U/Aqn0+q5QYw+xtGK3IhXJMl83bwO/ygQMlu8uRpJVIeFtx2A
	 qmYrrp19HFReP2SVZem69dslGkTaUbKF/O/x8d1raXPn7lYHo0ns82P70yFTDNm9ok
	 39t2y3sH41HnyJmRmTnbO5KgfuWxiHOGzrMzCaai/VTQBIuTvUidwMRi9NCuaL4pP5
	 N11RLTJDtRKsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC4C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788939358.26757.17137872811330542631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691ef2b713d0eb81e0c6e6f420a09690b7e613c89fa9d5548a5461e79d19b929
Date: Thu, 22 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747889393
