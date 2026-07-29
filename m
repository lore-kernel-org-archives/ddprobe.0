Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C654C331A61
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785291034; cv=none; b=VXxhjHV3kuo98RjiqoD5nbSyxN2PQdUKn6JrpO7fBpLUHAW36JH+hvfXz7bo16tBgzLtPm4GlbF2dlV8JM+W1gNxBmsLZzi+gmwtIZe3d8ZEZpWoNT49p7mkHnd9iRtLDlgYP7l0c0xo7iiSvMX7b2QONBgydoFEiCZ85qFfTs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785291034; c=relaxed/simple;
	bh=aIP2a9sdUyxRjj/Xk+YnUmZKJT18qHwl78pFJdoYLRo=;
	h=To:Subject:From:Message-Id:Date; b=msToZwBQJgO2ye3KR/ltjT1IJ1jYCMPFWppgCXxc98/Up/j4om7u+AAlD/yz+MnH70w2VKqAr6JaAS2k5JVW4ig3/jvQx47PKSM/yitEWGuknuGJM9h+dQlK3+qEeIMOFPGqNWD8+r/C42Drp1dCBgU1qnOvaizM9wQiBKnpI5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAFCQtjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAFCQtjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC70BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785291033;
	bh=aIP2a9sdUyxRjj/Xk+YnUmZKJT18qHwl78pFJdoYLRo=;
	h=To:Subject:From:Date:From;
	b=ZAFCQtjji1VuXg66rIMvKNdKUu/mHMcnEUIde/BDuBO4ob35Izc1Xsw6IXpRupEZ9
	 3FxCwQ9jTcJf7+yJyeqgLKvsmJoJQ/cSV+6hBEDTz0iRUF4dIYqtnmpomYVQLK1hqk
	 qwgfkTlUf4UthCrfLdZmLFR0s193QCJxeYLnmBt5MPZ0MrIZ6FuqTonS8hC2iK18bE
	 tT5Bq9dLq5NVq8cYv9HENS1ghV9nGuz61pCR/IdsgNdIlq021+QPlekbLhgbJjbFl1
	 pGB/XU5NGlwSN+LVEy+VdcTGjb033tRnsFBNqq8Mj4yLlUML3LiNajT8R4/IGvp/AK
	 PDeh9vdXkas6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9029C54F52
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529103368.9078.15730589430977093965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650841742d04dac003011afc2263271ccb6168a19fe8cfa124cc1eab6ce32fe8
Date: Wed, 29 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785291033
