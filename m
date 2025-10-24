Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237722C2348
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761290394; cv=none; b=dulZ1OCuUu6ooYR62IaEqOnBtC4PQCXzokjspEivLWYvQFyBv4VMS5JjdmtTasohOw8vhKb74vj+XMZxBw2mtNF4KK9kfCF3s/8Bgz+JYfLin1SicbokGDI83gBKDmtm/9oxzorVmjuCE3QFAfg2wRMXYb+/MNwA9ewnr3iVGdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761290394; c=relaxed/simple;
	bh=CJFj1q5EIsT9QSVCmBqjTzVhrajHvvWnl4wS1Qi2S94=;
	h=To:Subject:From:Message-Id:Date; b=Jqth7k4WExs8nMyU09p+VFpZJ1ClV92B94QWVCChhkRs/HVbJ0LZxK6GVHrvVf6R9WH7O7Hq9OZV29Z/MtRTnISuGUH2CoPDvPe0VU7hkErAWD+xeli8SuIGCgZtORL5hXGvZkijB12GTCifJ6wt4iQve5d3yDJGGEpu2U2nXOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX2kDuBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX2kDuBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761290393;
	bh=CJFj1q5EIsT9QSVCmBqjTzVhrajHvvWnl4wS1Qi2S94=;
	h=To:Subject:From:Date:From;
	b=AX2kDuBtW5wR8W6jnGHdnDs3bg2hiwmFFXnBIT/jwihH67C/VxqHnUe/UArXYx0DZ
	 JzFfrB57WXx4y7JTBreOb1n0usWez8cTwDOA4j27XFNTB3unFfeYv4gmna5bAk9Q/0
	 xN2aXyUWfODK3C9H1WIBFdR5oh1rfsEAzrzigIlgQhIsyD6LwyKwfQ6MCz1vNxyCMj
	 SZgJLL519qDmfwfWBqA1vALdRqleoiz62bFAX6mw8JwOTGG9rZRzpA61aOl9O07M5p
	 pcfFLgkRF8v11daKGpzz8iKtu3N26LN9n9pVSn0ybHPpYWuw5TtF+V5UahvugHLjCF
	 ajJmTSxHc72wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF87CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129039358.12436.4429308420449077782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83d56af17980a8635c1ed312ae98b4a896c211f9392bb241c3c4ec197b3ce39
Date: Fri, 24 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761290393
