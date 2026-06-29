Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5CD3F23A6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782721714; cv=none; b=Jsd+cEIfbSmT+Im5DAL5yLIrHjyu6tTpSlDqDqTgQ0NBAvv6/ghiQ28+YYTLdNJXF4H0//uoYNDD9IDM+i8ncMg+5mhXYW911sq3LwYH09B/SL3v/tq2JosSOTmy3l1Dn7ILbakb4jQqWSrjkCsfK10rF6zL/O5AjyO7q3+p79A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782721714; c=relaxed/simple;
	bh=WQGyvO+Sg2R4GBB6AlmX5yE9StmJRXuXzgGPfk2bltM=;
	h=To:Subject:From:Message-Id:Date; b=cmWTmy41YEkzlpQAr2Sr0DSqgiXvHE6/E9O+sDyP7+5OTG/Ys/w7UYly1MFSSw/Ry6uKT/IFFfFHmwh/vne4a0L8t5TfZTyANXlmWsHAwoV/hFD9dSWBMvU0oIb4TMNH85BvLaK6CqVNgtv+Y0HbBqK1GP7VTIqp6ddG5RKFri8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyhLiKHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyhLiKHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D9FC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782721713;
	bh=WQGyvO+Sg2R4GBB6AlmX5yE9StmJRXuXzgGPfk2bltM=;
	h=To:Subject:From:Date:From;
	b=HyhLiKHxL9kATWRU+RGq3FL9XOOkAOV8saWPYKx89nBJITDTTRjh2hneHFQZ43zLQ
	 mk/MVHazGFJimj+n3sVrbi/A4qUOaf6iLoOejZqyJM1VPC7GFeyMeKmB32MoQPyQWd
	 Y6n9gg2O0xCejxbjmndsXhzAEh2JpQCoeS5wA78BlZhiYI7/Zv0yl9YR/lFZwy0eS1
	 4eiQ5kUvViRLZ30pPDMUwGrkonu6uyK20rGjWSvubO6nDVmqLOoT6uR6dhDHz13Ywn
	 DLz9L21DPb4T4f07+YRkDal7hoZWR6s4telCSBJzvmJpKHcMLTKhCK7FeruyWLdw7b
	 YhrhJ4Guvdw1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E4EC43602
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272171368.28812.14291958002352580543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9fc836480888e9852ece69a8ebe114490bcc832f3cc73c1414047f89bb45d6
Date: Mon, 29 Jun 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782721713
