Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A0D1CD20
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708942697; cv=none; b=PfyHWhNjsSfY7pAXcM7pWpqFsPR1f21GAenbUyRCB6OIaRJ32ckOib1w8Xc4scBvZ5YfoExvs9Hv4wHnhLOR/aV+VYd8GMFr1GwHUlV3HJdakYfeP6gRFAQUBiA5A4aSWQIJWncV8q+KfYBOkFrqBF73FGA9rEsNo16obqQoS80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708942697; c=relaxed/simple;
	bh=/4J+rJOUT4Fc0L0j44Iq7s8QbMD6F+/wQOSllRl6YwU=;
	h=To:Subject:From:Message-Id:Date; b=MxbZygiJQS2kodInVzbfWlyq/uuLegjikKBMSiV4ORH4zfLd+T3p0DvnZpr3/GCEbpgnVb8xG/4usCEjFAEVYpKu10WlVzcRW0a6iQQeM0copLtIK6Cq/2ejdTxoRnDB7VXxaWwAvLheDlTMFNErHd0B3ifWxGBzmofXwi4mnR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvQivMmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvQivMmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C05C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708942696;
	bh=/4J+rJOUT4Fc0L0j44Iq7s8QbMD6F+/wQOSllRl6YwU=;
	h=To:Subject:From:Date:From;
	b=ZvQivMmNZ3s5QGiFL0g2hj1y4aUy4+E+L7BqMVAHnttKTm41Azz20GnZNq06ErMbd
	 E+9EtMnGI+7NDDYaYfQD5/nCZ6jFgzwba6LtJpdaEauhrvONSs07y9kCq90Qtr9DGD
	 S5agGUcJlcejvdIa53o9HznQboRzQfVy7GU9FKdgS1W8lzP9zsoO/wEG9IYrIDQNmV
	 cDkfuA9GUHcrBrsSCT/7HVOnTc7iWn5CAXaTWnoPhvWSNud27qWpJK+Ojf/GQp7YaA
	 hEEVsL6QHn8ZrLyO4vdCr0/PIpLdsATjE+4b9/HXLIwx32Ca6TbzllQbKHndxQ7sBv
	 4tiuh8NAiJcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D76EC48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170894269637.16128.12214237437048918349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3026e5abc451eeaa3261c2353cc1709ff2c91cfc93c1c73bf96cc6f156cf84
Date: Mon, 26 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708942696
