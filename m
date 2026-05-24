Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3499410F2
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779603754; cv=none; b=ZmIDFtDXOmAn4fyRYWQnlLbk8bumj8WPcLrkVNFQCXVDOEprpYAq+kFFaeA3mg7ZPdU54PPqot1J4bwsC/LVu3rPMudwzhSD84WVnM4Tdqw/9qH8S59gx1CMK2l5WpExf12fnvlUkgvLLqGMT0ZUizYw1niXNSrPVf2I5P4rRFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779603754; c=relaxed/simple;
	bh=wijvd6dZ1VF80i+Mvp5FtL8aebh3kGZkwISGWbYy2G4=;
	h=To:Subject:From:Message-Id:Date; b=uuOUVnbEptopHKs+n7kGmRGxq59/3W/Rs4N/Z+AJ5w77tLAnPBbsXUspFSjpP79QM/0/AxmYdxkHb0v/NKXzDaGoDEKU2HmWPAEw1jTf1k4WKIeXAg2plxsIML/qpHXd0hT0fN7gmsh5PdWHF3u3LJU/44wFi8GOUHKFgdmM9b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqyI7Gtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqyI7Gtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9286C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779603753;
	bh=wijvd6dZ1VF80i+Mvp5FtL8aebh3kGZkwISGWbYy2G4=;
	h=To:Subject:From:Date:From;
	b=IqyI7GtjExkPuA4J1IBAJhqk+PtLLX1mc8yTpDNV2GRhs2QNMnAGV9flj2WcOqZ4R
	 c18gVPGS+4DNiOIxIG33KHjGN1EEL2t5+1z6+BMXj003tPKBFSoljELGYDGA7oWE1H
	 QV8utLDX3f3C8fBzRLi5UBYT4WYQdWePYqgUKmJGO/iZRafey0Vzwpvx3nnqzyNsDC
	 F8bHR5219CCioAyFV+fdqR9HH/PMT2xyyviSPtzU1l4jgaxxcYb7n+C3kYw220PkkX
	 au0lxve/ebhsC1ey3zZGP2T4XHFQjkRKLY9Abv7z/KnRhi4zsz4Yl5IDUxImnYN7l9
	 vi+WF6TXPEs2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE31CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960375368.27366.14166400073950179414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523768b1384d695020fb60d1675508bb06d3a1eaa086daf208ee2174a5baedcf
Date: Sun, 24 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779603753
