Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133D618B0F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774240494; cv=none; b=Ole1BELUYgeh0J1ldJA4eduqNDzP8sJ8DbfWWH2THYTML1I4cdHzq1tjwyrzLEnrU2U5rFgANkyg/Du9XEIYjmIMkr8wuX1lV3MHKpJfkYZhDJczjEbp8TBd+pFQhINBLpCq2iBLTTXEtyAVlraEF3Et97/HUrxDvo+xP3Yxcf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774240494; c=relaxed/simple;
	bh=PzG6D9NUGw3HUCpHAf6iF0IQpCXr/Kw2YtkuU43Va4I=;
	h=To:Subject:From:Message-Id:Date; b=DxDbPBZA5g7NFumB+3pk1R2YQD2e2IaU/F1hDjkwGxxlJ5yEu3Hkq/X3Yy6BuIYult+9T1rWAatHplWW8M1XnlkiUuch98LTtEtKVc39Nt2giL+9GOEJ85MOZc2UU8JAgvRg3ja7GkTMdQH3TdhynuO/oGS3MiA1FEFAom03BGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TI60tsqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TI60tsqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBF0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774240493;
	bh=PzG6D9NUGw3HUCpHAf6iF0IQpCXr/Kw2YtkuU43Va4I=;
	h=To:Subject:From:Date:From;
	b=TI60tsqjsgmc3Rv+IpRjVwNpZBA0NpgU/mEunwltm8aBZUh1C9A/zSWLNGF1MWxQU
	 KgBXuM37NmvIHGSpV4nvv1m8d6jAYT51sTzOIRmAKLu9fEAoCvQKDqgDqTe+7qnMoX
	 JyY0tfZYA0/9yleiwNISXHVljkM/20q0NSIIHz2l5C5IpWuBItK1C0db1tjBElHkF2
	 2cmGkTejeJ2v9kHcEDxIVlL9wvDDpgzJIl8TYCMatu3k4hICWIG1aR5JkR8vYcjW3d
	 kEpUNJYT4aYdms/eVKh2Z1en4zPBnBuHozrDiPab+uQMMDRAXZKDhmEhARi3sncBQt
	 WoIfpMXx7nAxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1ECD58CC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424049362.8896.3303023495327112833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43523bc2183a22e0d8ab7c752c6b832d2e6e2e70fb0d1279851f8e36613af65a
Date: Mon, 23 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774240493
