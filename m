Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274FD1EEA3C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348994; cv=none; b=IZfuVvDtlpi8s/WNy+POO+todc3uTKQMLB8qESwReaih9LdOMXeZina0qd1ROOSD3XUv+OmqaC+aCGEHIrcYmAnH7NbRLrwq69tE3ieWurPh5U1CNyrGVCgMNAP1MUqoVmN0WIPP6F2jd7oBQOAQ8/v45yTt9grVRa/OOYhfuA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348994; c=relaxed/simple;
	bh=BmBg8PuFtUZHbXLC77KXrxvw5Y236W9Os0xxcOrJm0M=;
	h=To:Subject:From:Message-Id:Date; b=sKbmlMRPjH4l9Nd4ByDbFj75WKH1EkmI0BQ8doKAH2Cx2NnzL1iQeGU7KatcvvKgnM0q9LKwFiCGSZDI73R3BpLA/iNG2a8JrHcqr42auwHb9aLTBVgXnZM3U5q+DORagsTtT7yrGk+dJfnKE+Ha6YV8x5camhcq2sDTVAWu5/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syAQe7oP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syAQe7oP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB7BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748348993;
	bh=BmBg8PuFtUZHbXLC77KXrxvw5Y236W9Os0xxcOrJm0M=;
	h=To:Subject:From:Date:From;
	b=syAQe7oPNdH5Z2gUfR7C1YRi8rjaSzG43650bC3kK6fFNB46ItVA/TW2g6YAZFUeu
	 BTbIPkwqImGUh/E9oRBLfciTfKx1r/YT9g/QrdrG5V5yI6sqcISZLedLm6qBmdwfY7
	 MQyOzUvI1XIYFbj84E3oGP8nvdV1tTZFC1LXvlcvwSjzR42Wbwq4C8D1cOX31f1vsp
	 1W4nY881/M1iXnimK9Vq0iKp1qCM8Ag9PvnFs5FsiS0jPnyONU3Sw1jgjloloIwqWn
	 0zpsTlqNQ35nZY5jc1LYC8BWLriRLQO1M/dJVE12qJXzW0fJovVSsydgqAdmyZNA/V
	 Vy6DAb3DV+pVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F383C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834899357.20057.10768838336868903300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb65bd6240ebc1e5ffce19a773b8bc2ccec83c77770ab2c147a03cffedde7b21
Date: Tue, 27 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748348993
