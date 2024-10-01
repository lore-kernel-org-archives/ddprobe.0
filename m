Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11FD1C2333
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727784954; cv=none; b=YxUW1ybon9o6xxIs344uGQYdc587OahIVb+ABzijv2hh6Rlfl9r2KurdPvSNBCweoWraG4tgm6WyC8pTyMzWXTMez+vEbBd++SmebCCuJ1gR10Qz/fxRYplir5Pjxfzkv424LWE28gOTvAF/U8dGcQ5pHQI5QMu4nREhLTGJ1NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727784954; c=relaxed/simple;
	bh=n9K8tMDUXHZ8ZwpGBcIEnMR9JZp1sT3+RuZNB9m9Sto=;
	h=To:Subject:From:Message-Id:Date; b=m3JSK/QNgOsuGfMBvxF/cErZJAxMsz0sEGkS8bUra2yonCW/CqG6jHLFat/GS7Ahh81ojiQMSri8HmX+AIeurSHiVI5iM4E4XIEhVwMnG5r9pBW1uglXNu8m3scm3AcS2mQDzn4Cze6E+G7JN97ecyacqPOK0q/M37nYaBRpzDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QF+Fugxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QF+Fugxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F810C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727784954;
	bh=n9K8tMDUXHZ8ZwpGBcIEnMR9JZp1sT3+RuZNB9m9Sto=;
	h=To:Subject:From:Date:From;
	b=QF+FugxeU3D0X8vR9TGXbAaD5FDySBaKKpEkvL5+z/x1jxZSk2m93BPPUI0KS5ArZ
	 qggVW4BvPzIOUyj/W0iVu2u0kcNunhmyh7Kgg8I900mPNwWibMsuwCGAt67C3kGMla
	 R8mKsoL3naQlG4m+NPuqgefneqTZWLSZjCUoRNmCIg05X5Ha2KeSmoAm+ETZ0/nTB3
	 HwwHcZs/FQHEk5He/V+PMjZehWvTbTuhXN9/q+eRdu4a07Am4rIXdvsy8ZeRffo5Uq
	 L60ppoLmdHd8gNefEl99r1Z2rYjAUBmIa9gXUxIn30OeiCbsH8smIC+PX7NVPGRuDD
	 WSCLIUt40kbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3000CE7D12
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778495380.28166.2026492993884084247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb7758060e65e792b5befd6f166372d32fbca7ab360c33b1234d46688163619
Date: Tue, 01 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727784953
