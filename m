Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306FF2957AE
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745864994; cv=none; b=H5EFhvpY3KtD4Mz+RHBAGuS1XPS1pOPrUnfQu/Fmq25fsWlg2XsKCgNHrhXoBKwNycFgt/AfBXsaQbSr8NAZHkVSJo/Uf8Qpqj2x3y67gH+Gy8B0r6ujkHAVRYRKZ4fZyMlJCdLBubVQekJs/f/u5M9ZBZQEobR/i0y9VPnxJt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745864994; c=relaxed/simple;
	bh=P9ZPK/NbhH9pPNHU1oPyEDb9C3Jmk/ZQ23bmpKNZV+A=;
	h=To:Subject:From:Message-Id:Date; b=keicGALqWAhLUNKqsHELK+QiIR6SZkinb6nTeLKSxf8VECRAor3IasOKX4U6GoW5C7kHqfifVfUKCIAEplhuOyouPGpGrjHqlNd+njWi0udMT1x04+hJ7+KjL/8YhJ6jdS+foiuewV7a2IVZzSM/W/VunGvN/p/42lHapvOdjZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzeH0Tg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzeH0Tg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E71EC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745864993;
	bh=P9ZPK/NbhH9pPNHU1oPyEDb9C3Jmk/ZQ23bmpKNZV+A=;
	h=To:Subject:From:Date:From;
	b=nzeH0Tg7T6xb8/v34tiiL9R6rdvGC6RhSyxdMaLt2PDruh70UH61ATbIHutygLvQ/
	 DDX48lVze04x+f+M5/Exm8/ibDKPDGCWyCsiFsmgDzEmk6oTanAn0pLdjgMPl9Hsdo
	 h6eUR2uD16+JaHBo/GhF6vNa+tFUXB8aScUrgsc+Vxb1bnhsQTLi2BuOP2NOMzWy6Y
	 8F3orgpVV5WoAypp/sqCHSrVPIujEeD3YQyQLGa/w0l+0/EUmX8groI5t1ryjnFJZX
	 v/kjAztUyiWvHSuA8pLgW20BDXMTzHLq1pUQfYMLJ9Db+NHISZ7us+OF4CIzEoCm2p
	 /3UdgxHW9mkOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001EC369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586499357.25142.6444249860245995414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4582e16bb90a5ce07c396c824510887d05dbf871d3921a206ca46da42aff2646
Date: Mon, 28 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745864993
