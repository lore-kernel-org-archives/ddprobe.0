Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F42D355F41
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782595714; cv=none; b=DWYiaFGbpN9u/2ByH5tE7sF+2nPBcR9c17iRSNsoHu3WhDlgp4i7cNyPVBets3aL5IrAXCe6cAa6ElIoY/IfgpLJmNdiKkhazG8ZaTD9Wmk18xGVLb/1yLL+K2WVaaCe9dIgUIXa3cW6OvYLO2WMgtb96TSw8d2zFVGo4BSRSy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782595714; c=relaxed/simple;
	bh=Q4zbwBu4dNkmo00t/gCfeKWgv+vZNVMTN1wTjmteBL4=;
	h=To:Subject:From:Message-Id:Date; b=QUCgLs3C4mQVLjVVCJZ1htc41W5qouxg7wfg5NZ8WZfClKQX02NAM/Q8h9M80M6TuPP+n+NnlhZUfla0OpoBVe+NpJlVfeGOm7CLafeTIhluxJBXyWaAf0qE7RI3AeWeOM/NxYoXHPV1T2nfQRqZU+aIt4PCzrfAM1ub4XoUtjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgEvPaA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgEvPaA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AD3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782595713;
	bh=Q4zbwBu4dNkmo00t/gCfeKWgv+vZNVMTN1wTjmteBL4=;
	h=To:Subject:From:Date:From;
	b=OgEvPaA6xtYRWCuddHc9aGgtF2UiduSlA6f9mEruFvLOPl5pd7MboNhQhrSLFhqx+
	 ibFirZOzRJAdoQb/+TCiUaPvVSiuJOAbSB+NMEfBqvl/aWMzzO8fa6++Rvhy3JYElk
	 c5KeSt5/a16ADkZ51tOpnz+xVPcP+6w85vHLg8xLc9rMC1kC5QKrkc6zKjHMt7di+r
	 fBSp6QL24pAU/iKmdRBPE+iNrzeov/+FiTxkocKXNPLph6UjLxVpqU9T2scuXGJLKb
	 aprreHE3yoO/+72sNyt6p5k1oqrWjHhmYDe1xF+yCs9gcBKvegozDY2qJMIsfsy/8Y
	 8XKyWTY977zaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B7EC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259571371.16523.12677400305863972354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fc7644b0e972e95e00138c26d23e6f33723cbe6efc0f380b4fdb0f691b2be6
Date: Sat, 27 Jun 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782595713
