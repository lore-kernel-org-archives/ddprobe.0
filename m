Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC3231A41
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781590594; cv=none; b=brzlsPlchPUyrVrYVfeS3J+Tj3evD/i95DRRKUrAAlGVO7E9oDIzywN81rhKV30H5osooVoEV8CTNIOVBGO0kr/+JGeq+yreOKTlC6L4U+Q9EF7aCMi2W1nlqNH7mHeRbEbCvFfWUUT4b7GJ9YJ3mrqiVRV3bW3+LYBNWRB7HF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781590594; c=relaxed/simple;
	bh=zI5rRArcgutiknQQcQVGscdFzGfs9RYCmwuzl86AX7U=;
	h=To:Subject:From:Message-Id:Date; b=RdVKGpRBA/fHatr+fOUDNOwJU+8Af1rITRw4IpvhfQtS0mWWMUVs0jX+i4HCA/XaEDm1pLLgF34x8jDjBcEioLI5qJLdOR8ib66VWdLOJTyyZQGjDRMDjZUumMryWBgOt4xr4ZvyGHTVebqjoe+RrOxtWV+lzFc4C/g/iyW+jYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO6igaKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sO6igaKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A61C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781590593;
	bh=zI5rRArcgutiknQQcQVGscdFzGfs9RYCmwuzl86AX7U=;
	h=To:Subject:From:Date:From;
	b=sO6igaKKEfYaAHrtO9zsVxy/mPs8TRl/ZMI6pP7+xsEuNN/k0hssCN/65Rt3x0sEJ
	 NsWFohxiH0IgvO3aq/N+kMD2XZpF7GXw7ItoaSyzZyrcPPqmi7KMUCkV1i5NsF6HXM
	 ENbZHoHAjlQPlCO0WykO3oEgWVvHo0kg/jrjTXeHRVYmzlol4yGv5fkta/gLT0ezBC
	 y1CODd2fNhRbRZh5bipSksXABNJgxbcbBZfOhiKDRRJvL3xM53M3CZ2zaX2rKTH4vz
	 u/I5QcxqcjjPeUI6TYMXIWSs5g51YIK5FC0Yjsk0o7cN3+bE47sPvO7mPBF29vpMi5
	 1Wjg7vIi5RWtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB68CD8CA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159059369.19766.15842474753515649340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a188426ae8d420400f010f193b3107549a468976ee5a60a828ac2afc348dd84a
Date: Tue, 16 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781590593
