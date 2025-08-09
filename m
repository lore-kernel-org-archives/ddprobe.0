Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A5121770C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754723394; cv=none; b=qMVqx1IjKzSXTc3kmRGcuI7NmzsKqgTdZXLK0aOz9yZnxm1PTUEgd/xCwr6/8rWXTZcfbzNv1hSgaHq5HZ5cDiAimQD4OANf/Aknb105EUT8aaIpo1JKHSr/a+WKLAuQcLky7E7P91Z926hny7YVLTcUM4VAhVlicLEtXsBJ5nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754723394; c=relaxed/simple;
	bh=q0478ukxBNlp3oe+f25SPAWkkhO+w1l+RkzrsiJVvRY=;
	h=To:Subject:From:Message-Id:Date; b=P3EkRH6Bm35myy5TSgEmgs6H+IxT+DxGLptpBzni1jeSonu5Q8dWWF6XwKmdsSBvaxECag0Z/vWjM9XJeIkpCKbtpsnc/kG/r/d/kiP7sF6l8eQpoV8I5+PHWRyNISjcAQnGXh+MsnwnG4ncXUPpc0hPT8IPdP2SPh/dkEVD1hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5Uz7kNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5Uz7kNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C327C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754723393;
	bh=q0478ukxBNlp3oe+f25SPAWkkhO+w1l+RkzrsiJVvRY=;
	h=To:Subject:From:Date:From;
	b=c5Uz7kNkVGjUHBPG+IHnh2ZlDSbGjsDOv2ZI22foYbUoLLyQbkIGZ4+8OoEFmf+gq
	 QR1ZeuqTdVfCmR3zik3ZWH68om/yVco7hRS9MNctIxj1Hbss4kxSVxZUCsa3Srnh2k
	 Jf+DYPBkf5ENfJKhoKF1hp0PqFNGlKbeJsHnenX25dES8sDdn6qdAFU63BibcEfma2
	 U781wRFGx8QsD1sWQP2DehaTTMWQBZPuE2RSKt+d12r0mb/FgEAzqkv9gy4eBYgrGu
	 sAjW/1nkrewtbHkMOkbZdz+72ULjm5WFrqBzKwJzM7oeV4q/S7r2VmBJboZKAmPDKn
	 RMHLqj757PA6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E37FC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472339357.9178.17004712450083140902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68887f56de35802dae383a662fb75464044f931dc082f788c5c565cfb3688cb1
Date: Sat, 09 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754723393
