Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678EA1DDC9
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716038543; cv=none; b=ApE0zjtEaHM1X35c4sG0kh0SxaczfAMKcorD2tKiRXUWt+QXDXXFE6GZ4vAUOPS9t6QWgAyO/k8gKM5dD+RCpPnAg63a48Cq0y4tEMdPBM6PggizjJ3uscinEMbgvwBpKWtrrBfkLG9G5OPwSTNyUkdHFpfWl85pESw4sLYjv1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716038543; c=relaxed/simple;
	bh=GJ1vXkDMdYSR5DJvgylPsKqXic4iQuyXoO61M9aOU7g=;
	h=To:Subject:From:Message-Id:Date; b=uqIbrp67fnSztlbevUJPouQPGsBfCcL8RAou/McBTH2R1VwEeqv6yoHLjIwzpq3Wjm4ijh0kqDiQ8PNMhoJ3/Fx4S0hjLdnlbKHqa1Za9+8HNeZXvPG5ZtN7F8kKT2IgdcT3fAs7z4kJmuksCDHuoYL3DojwAX43GbQscJtcZq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKvuqcTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKvuqcTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D48C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716038542;
	bh=GJ1vXkDMdYSR5DJvgylPsKqXic4iQuyXoO61M9aOU7g=;
	h=To:Subject:From:Date:From;
	b=tKvuqcTwj4jkzUtcUGAxtzzDALQNSRMmY5hKXIHVG3CFqCdca6iSdVt/nBIxfbSD9
	 Lp4Mn6yLLQZinFVtTLC3cTrbLEKRTqf5Yk1kusIByxx7P2PHoIehWjkfvYrG5GtS2i
	 7U5U7P7l1iAXSng18bWZm7/trgUECvR9YTQ3HVsxA6DpgAlLzSJdt4T1HSoE72khVJ
	 Gt3EeOdKoGHuSlmLzNhYno/RQS02dZSdk6Y36S6VYD8X3Z4ofHCpVlTxPiyJkddT9q
	 XHXsJeQk40RsI+y8dNrVvfi3eelxsXHCXFoJyq5nW8ixdda46mgqVk23C03+1THkRN
	 sVURjKnYgIlhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD61AC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603854276.25055.5126036616940025271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05a2b6ab2bbf5356338ab7fb67836937b5679cbad983062ad007160ecaac688
Date: Sat, 18 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716038542
