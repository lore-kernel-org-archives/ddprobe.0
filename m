Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61453714C
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712358496; cv=none; b=CNGjLweYrF4WUmv1K1WRN4Z0CGvKcHcZR8DNniy5hW3490Xet3bDP6fcGMwrf7t4u6IqjN0cOzn6o/Bzfmn/rcSu0Nurp7+Xh5PRhIortmSV+Qyy7NRw60pHtTQWNhZFaTMYNl2ijZsx4ITbUteug/umfD0cBKokHNpwTb71xK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712358496; c=relaxed/simple;
	bh=/xIyczYwoRaOmr8zH+GkgnkaybFxsrU0WuW0H1JPMKI=;
	h=To:Subject:From:Message-Id:Date; b=H2SsRYy/+yJYiuHUeP8FpZjeLTDwV6Vh42xfjxdAiqWh5OGPClbH974lRJgT7TI0NFGJKd++oy5yRGwb4gjWmNULEZEesBCFsaQM8RpPRSme9w5uL7qMo5vHMIptkXzoqh6HW619ZY8swpGl99M/XCNdh4AZQguVvonUeiD5HiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9Qv9Amc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9Qv9Amc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A81CC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712358496;
	bh=/xIyczYwoRaOmr8zH+GkgnkaybFxsrU0WuW0H1JPMKI=;
	h=To:Subject:From:Date:From;
	b=a9Qv9Amcbyw524/rNTD6LD8JvRCd1DdO0uuNLJbqhADpUQwlTnuQQZSkdJLTLXryt
	 JHz9hhGHBTkYZgh0l7Dxyt6ueokpn+uw+lYICyQjMQdK9YWCMKvbxogt/ERaA5Nuf+
	 gs/N6ip9bxDpLd1Q0PB771SYGEFpfmdGUAZD30zkiGkpR9tIP1cb6OfcfPRVhrv3uM
	 qr/zUxQildU5x7r7GDh+NfRe7fprfnJqy/myJXTFrw0aMmUPNqlyiWxx2jkdpY4sUA
	 8Zy+cSjVAKlUGmJHX1soL5Gau7LlGiB6J3azKZOR9ayGC2MVLnS01c/jUqO52TeIVl
	 WRRMjojdPeZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68699C3A59D
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171235849639.2052.8740494152355753471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3469b67c719722953d18848080acce3c4d310fcc3072040a1349409c2e789e3
Date: Fri, 05 Apr 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712358496
