Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941E4432E6D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784620114; cv=none; b=fW0faSe/rYvmEurjc8++Pm/Q2YyBWNf4C0yx+KlL4EZ5QdApHayDZzDw0pR5D7L4GwvRQ++4O+UBAAo9y5YFfWg6E2Gr+vrgLxET5buIMp8JnVIXlfqzHnlYIAkCpQeAhPuQZL3QJocu2/4s4wylKjTjBT0T9udvDU8E1Q3yhOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784620114; c=relaxed/simple;
	bh=XQEMsyayZ8t3fzjMYb3W9WYlpZFtcr75aEQyKhxsRvA=;
	h=To:Subject:From:Message-Id:Date; b=CFZUM6QdWYK68z99i5jhCb9UjemOvekGHpSv0s0OBOH7h6q16tcRklbaG0XYNHB4xtR3e6rqvA6kP6XWOM4iRIVkubVm2D0dalNnbzXdCYVmqDP9MTLvBt3MKP0D1Z1bht7qivxfZTNwMTAX7lcXzsvhNgma7PRazZ3wOMatqTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hR9MTpRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hR9MTpRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3EEC5C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784620114;
	bh=XQEMsyayZ8t3fzjMYb3W9WYlpZFtcr75aEQyKhxsRvA=;
	h=To:Subject:From:Date:From;
	b=hR9MTpRaYuBYhiGpYOyXO09fC6Rt1O/0sU90I4bU0ob7CGNvT8ckKziOYnTN9/enO
	 VyhiucHgiO3wxt+lmrkoJuNGdwRsOlZI5xjQy/dYPquLrKM7HO3ycR9M5Ont3/m2If
	 /wYsj7xxV2Q0nqxvYa80xBsrEeHuqfSR+VsUNy1CshojeJIE9OU05KJtK01bXVbGql
	 0VFPKTeWJek43DWnSVpGcOhuTn7dQmhIuin6MAXl38KuyyM+px+Z94j2/H6qaFVEVE
	 0Kgtx2qct3JC/pdvxLz1mouUeP5AkYiHrBNQaJX34PXvn3NFQJIFQc2phJwnO7BmBS
	 sDREEF0+1ox3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECA18C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462011395.23502.13737860326866474908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45753ff420fadbc61449d4d6a917c6fd853dc3059ceb653e9499e530dc7303f2
Date: Tue, 21 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784620113
