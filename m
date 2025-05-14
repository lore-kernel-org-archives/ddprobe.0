Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC198C11
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747234194; cv=none; b=JBrd/lYQ0lU5XuC5qjWKeRTleNhQEpJUJsJlLRpLwPBNASKbjXzjfIRziQ9Xk/WTHxQpDN7BX/HmPu3NiE7fulv0+DU9+nPWf1b6dvBIrErtKJjE9kfLlzXso5cHNyyEKVcIl7gZF6bagOkTTHNHnyzsyKAnte2jC/4FQVCWdQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747234194; c=relaxed/simple;
	bh=bQkx9kiVmXvrIlOROMXbK1V6Y8oi9xOMJdTMqXkI7Ks=;
	h=To:Subject:From:Message-Id:Date; b=HI3m8dcBJbBizw8b17zvQgpT0RiZh+TS4BfAR7Gp/VJcEV8OBlLuhlOD9VMawzjEjWxKWuIOJeA+EiZDlDi6EO/55i/J0pgcSb3w6HbP8WqusmpfrtFMm0QcEXef8Kos8AgqiOumssmDcjdypByaB9HIi9KNHr9lz/EEU3xdfwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twLNpqqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twLNpqqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F909C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747234193;
	bh=bQkx9kiVmXvrIlOROMXbK1V6Y8oi9xOMJdTMqXkI7Ks=;
	h=To:Subject:From:Date:From;
	b=twLNpqqKJ+5BbzGec+xcbkozT/bO6fy7LOmZvFHKzGqwq457hiXDBo7Lra6o945jy
	 uD0yab9MzoBFaJaU763T1/2yeZ33k9vd05/IB0LpbBX5E2pJ1my0H4IeHru1XIXcDP
	 g/5Djy66x6DXksAI4d1PgKrH+y5SpFSInEN04iyYxSiNfVuZQch8J3IU6ksElIaaQB
	 MR5/+vOTzSMEZe+5O2Qzsx8AtiDPkjzHr15/tF2FtBSBRthC55tHDJtOSofPIxiJnm
	 eyQL4wsyOT6nty3OsaOCl3YUjpmAb3IvWQpeyAVOCAGabxxS2BaWS6xix0fg+t/s6b
	 cbiGkiOSCx+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E1C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723419358.21559.15891196715660069092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce03051b40cb7399401f8fc38021483dc4ccb021ed4ba4a21b3c989724660130
Date: Wed, 14 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747234193
