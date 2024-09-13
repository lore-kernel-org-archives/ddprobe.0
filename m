Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50791714C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726268754; cv=none; b=D69MShH+7PGSSaCdnBXXsLOst/BGyJgpYDGAskLwsv+A7/eEII3k98oKLZbqqhWp0xOpRTBYv926Bcog2TlcyRoS3EDgNW/+G12mzY/sP4QzDzsKws1Y/pKlfJ1wJSHU912L8b0KVPIfXklHFuEi5DXeC7Qj9ysIsQSUKDkPu5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726268754; c=relaxed/simple;
	bh=f0U0W7cJ3PfeYs9WpTSJTH9S5hYuq/S9ekx2t9X8Kek=;
	h=To:Subject:From:Message-Id:Date; b=ZXlSxx0+FOzXOkZNLNvB3Cfm1xcPvkrtTTO2kNoL1H7eU4jJl/Ro0a1mUS2FjmjINBxfXIjP8rhlO6Q9Q7cGiMK9NlW30DoxEBLcHnBsuFvJcBiW57s5LDwounAjDbONLNk10BK/Q6Q26RDhwSPVHT+TEije/9W4jKaA+WBs6cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5XPAP89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5XPAP89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FF9C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726268753;
	bh=f0U0W7cJ3PfeYs9WpTSJTH9S5hYuq/S9ekx2t9X8Kek=;
	h=To:Subject:From:Date:From;
	b=r5XPAP893kcKhxQFvIiGupzsUx2AENllwytd8rI4WuTKeKQelP1TzIPMXyuGxLoFF
	 p8gPBjUTjioGbiDiXGrG8KyXePGj6GVSzdjkr8ykB2ntr7q8Dj/yen51zRBH6vICee
	 yDE2xtvSwNsPv9X6JgI8koA6uidKlHgE4bkus2muMJKXxFj+WkhOHj4dy4b0ryqXAd
	 wfKVk8i5ixPvTRZwpMihDPv29QOqzq/O/uTmzqtlwbjaevH4HeKOw9wYHWYJ0u4aN1
	 vW3Rz28QMRgu/wKHv7lyQZw3C572nZVcEJPZlHb0MFVp+QmKnYBSy48hC32tEhqT10
	 7O+Pg5Bko/nPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B017CFC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626875371.8836.18085222697132179637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb19fa7cbe04e963c099ac2dbc041013cea92164e47a2775a629a18608720d2
Date: Fri, 13 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726268753
