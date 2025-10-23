Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8265175BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761181793; cv=none; b=GnpyWtnu//xQaLW9Wa+amzW9M/VKlX+yeKHK3JEKurIL75rLADDqyXABxojx0waW8RLp0lAyr9zrdwDddNZb4xcycEavjdTMKYI8FOBZJ5PuUd2DL4nV2s4nDr3GyIgRt20HVXYkcsc6Tf0yHLG/VbIsNx1oPorC+ZuXBvfYcDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761181793; c=relaxed/simple;
	bh=6hQI9abFTvKz5yNEZyiPki5IsGMV83wF3Pd+nnr7CnA=;
	h=To:Subject:From:Message-Id:Date; b=Xnbc9SKvS9YUEOsiKaGIvxCKmr2BCxcEZrB5Q2sDrffGRet7Oof12cBdJ5UIbl8I0yNL4bKZ5waFG1mc5S4T5oobNhJnvEfkha4+Us2U4zq26Yyps4nKkVqpbrpgpaVtjOS5Xvo5uYGcC5R/4GppjrG4Nz5UlIzFUDTfLrv339w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN3b6xo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN3b6xo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A74C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761181793;
	bh=6hQI9abFTvKz5yNEZyiPki5IsGMV83wF3Pd+nnr7CnA=;
	h=To:Subject:From:Date:From;
	b=QN3b6xo4xhYaA/vUj9vTf7bLj3hnMqDLRH04wNtcWWIQjPuFSZ2rmI4zQOQCGA6NY
	 ZqFjXbvMOjnfUZgYuD2Db/Pz1p/uzqhQ4Pdh5PTrGuUFlImieN++4qlEl5KTbgsXHH
	 hPCjnVygcy0KV77Da4DgaYg7+dA9xWJjQa4fUVrLJPdDrhTrW227fI5QNwLbz2tJcw
	 q3LuUQUQG4CN6ehN0l0s4A+3KEsOPurBZwr1qJkqP7TLXeYDSdEnjphrlyayiXgPmK
	 TiWEcag06e+w9k/qzK0DNHxT34e607LZi3EoyztiF2260Plw20Aw0QGD20HtIebc9A
	 PNUM265X+QmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223ACCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118179357.10072.10963398653139556916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51619ec293646e12a4a334e2dc7968c2641da12261f0cd26181fd098e0377a5
Date: Thu, 23 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761181793
