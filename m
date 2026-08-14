Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6F43C5833
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786720834; cv=none; b=uqgQC5XA7lCN80tErCRtWutnY9n76eDjLmF/LJ8rFxfoODTQV0gCj3gKgSceP+G8vOWdt4QOGL8Jju8ySk9sEpXI3I2af9rGvPxNmniW4Eg+CYyxKFUsqyz+Vkt+b/ysOKhl0oJF23SVtTjaZ+hGcMHgnOIXawx2NyCv9dIf+D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786720834; c=relaxed/simple;
	bh=iM3iW37jueZwnXXFCQofzNYXSsfE2wF4QP4CTZsKr9I=;
	h=To:Subject:From:Message-Id:Date; b=qBYRLgH57XxKeEoX5VprBejTG+jo8UnOW/R1l2rPi6/l/2qhn6QdY4W435xzwFLGx35q1MVE/6HhzgnVeltNy3ympuoygPdjQRszHPXstYkoiWRTLFITNun2hnfqF3aU5guEWh5y1i03y3W1FOi9xgFR6Rk+sXlA7x6fDLejmTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt84FIk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt84FIk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C02C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786720833;
	bh=iM3iW37jueZwnXXFCQofzNYXSsfE2wF4QP4CTZsKr9I=;
	h=To:Subject:From:Date:From;
	b=Pt84FIk6X6upA/T2okPIAJqVVh+xIqP1Qb14a2F/czPEkUhSno6otKHm3QsH6E8Ze
	 n4V2OV+I8dttOB/Erx3cLk8Mrfch3nMP0b9NiIFwGrq/UmALmZkm6FGKATSJ9zhIlx
	 Fw8GaoAB84FT36TU2ISJpYBGuP6wjb9F2DhT3C2iHmxe7hiLIE/YVfnfqPYtSwyor5
	 lRZQuu/g3pQ4szbsDjMaNMBk0PGJpyZoIbdAjUUiDk+0WV64bxGiarO5qSEdlnuLAR
	 peRZUa/0eTmXN45NOzuzkFsevyL5WpxiXa2IKkaLh25+JhyeZjPUahLJr8RaETsgXF
	 gPF6kcCjRXljA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7899C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672083367.31131.12696112160428428304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcb057eef2d80add15a26039d2a572c666e5f6693c999c3fb9432ed110d1efb
Date: Fri, 14 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786720833
