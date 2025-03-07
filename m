Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47399190696
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741321735; cv=none; b=rRAD+OgcGnxUGyrKr13Ba8SH1eXasKnyTYRzZQ0ZOP2eRfvFTJlkHRVZBNxyCUXiNhaQgaLY0BIgyM9O4nsHJNpyrG7Jy954BfxqSiyl+LE8aJe1Jd+ixlo4SE5Ze0e8QeLtQzxKF5XwGlf/+rC3yoezvq6URTVAxBdbu0v0RyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741321735; c=relaxed/simple;
	bh=/Yh900ZLJqDCVi0bv5SY/pjHSZhE7duRztriNagRPyU=;
	h=To:Subject:From:Message-Id:Date; b=LhEVfHq83BKOZb5K+RzQ68jciPDiQ5vkhnhbpDThACvGTVKeaZ0JLg0f9IWIpzgfx1HKFctiiAnErObWLgktHJmfLGzkvUYMSbtkc0tTLg7RTFcsyag+bfZqE3KgThwh8nw/UAcWk3i1ga2Xm2dfmM+H7Bp9UyxRDMM8np/Jo9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD0w2CzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD0w2CzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC84C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741321733;
	bh=/Yh900ZLJqDCVi0bv5SY/pjHSZhE7duRztriNagRPyU=;
	h=To:Subject:From:Date:From;
	b=RD0w2CzY2lhDeFVCC4Xp7+UGrA2+8UeDDa7/gTCVg/kPScmWzflOhQE9JvGIER2Fj
	 m3Wu9qUpLwyiNgNb5YxrOlMqxTVLopC0aTPvNXAHs2Nnu7v07EapMKm4rBcab/2Rt9
	 qzNUhXsq+0/L3Y88AjHIgIA3zj0nf+zJnR9RfWU7eGB2bDBH1Ncev5EQorf97zHcIw
	 8A6qye1Ig3mC7EeDEJECAfRhdkMH3zafLbGAilf8bcA0SWxTUyqDbmwopx6Gk7YdfG
	 1WPJrrVv5DL+ZIgMKyuE/Sjl8/D55O76vANWAQBDVMxd8PsryYSIowxaHdlb2TyjZe
	 RjcD71Vw1ZhmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A16C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132173360.31470.11646990129046542880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16498216b12feb83541e29a2aca51da9e407a225e02490d9225da6706087b999
Date: Fri, 07 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741321733
