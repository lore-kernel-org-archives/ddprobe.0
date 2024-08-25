Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7CE3D967
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724590554; cv=none; b=cGdwW227E2A3q0oltCl6FTq62tbNOUdZmj7hMF+8s3Vfr0qgDeH8+lVm6TzpuHdSBNsY6IyVHd6/EaHbP7ijhZ0Nxtj7pn6NIkk81nm7c7sC6uex6JQdTPkVTMuRnysPlMUBkD1AZW75zogOSl3Ja1MtxXd8P2fgwPfcnsuU/CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724590554; c=relaxed/simple;
	bh=nkPpJhsTfQY1sLkg0aUpVDkcPF6vW39koqdf7N6Po4s=;
	h=To:Subject:From:Message-Id:Date; b=l+Ug4Gy9A7mXQj8RQjyGelZfQ4pERaXHEMEUSxyj5N1/7CXbD/AnD+Nk5d7HMjvt9HoiYX/dZwHCSMSck33WouxYuQ0FMDiEv/AtMlPNGh/H99ChqMaOYtVLdvkOg05Mk/JtX67PTRp9XlaAnKIJgYY/vUN0jt+tMhDwyw7HKwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUmCSme4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUmCSme4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9A3C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724590553;
	bh=nkPpJhsTfQY1sLkg0aUpVDkcPF6vW39koqdf7N6Po4s=;
	h=To:Subject:From:Date:From;
	b=CUmCSme4QxmjZ6CsVmjBPMUjEKVhKjghnhUqZbEGaje5hh6ro4/nv/9FWcJuSfETJ
	 fMPuZ3nNNAP09NJitUBYqDkGc2JgNZEL17Jf/5bYRhA4Ze/DpPdN0Q2tSU779+zKZ4
	 cKN5yAUXZ14vGTBPrP8yX4hc+8CRELv3H2Lf1fIgUJwNEBt1f8vToQcSjJH1egOaNa
	 Vkys57Jf+8frePMtFWyW5IUJcHl5dWLQQdDyLX5SWk2xurFH68eBHXPif/tYl0gCZB
	 KXI1injDZyAZirtbkAwk0TRiJ78PvsoH8c3ApCI5m9hg9YVtX253FXUDbKu6hR4HMm
	 WS/SW8m9Df5YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42ACC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172459055361.17980.8029718556310021571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13bc0570e6fdf581fb161b27ca4ff374feee1428c1c8d06ef434f57479892325
Date: Sun, 25 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724590553
