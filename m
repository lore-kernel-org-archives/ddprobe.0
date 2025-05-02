Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F11522F75D
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746180594; cv=none; b=uWuHZqBVOgW6spoTeRl9dMXVdm9d/2t0Txx8dMQmRTc7oDHwcIUbTM1bhoIAjQTsEDFY5fkJ6tHBFqS/6q4+O1kG9T/6RWaXSbvFxvrmTDYOHstVMWPcBGHDrGCO9I/ei1Kq5/P3Wg9tjhuOQd11VW9py4SzDAYgRzSn9fwWoOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746180594; c=relaxed/simple;
	bh=UYdcIU1JHGol2QrPtnN1Gz8t4cE851zSb4iuSnbRkwQ=;
	h=To:Subject:From:Message-Id:Date; b=aIuf9Mk6QVEopcqdkU+fVqjLscCOz7jvkhtVgpbSojdxM4e7IofxCK2Dx81JISoy61xbl+E0yBOXLF+Cq4yzl7mHJg+B77+4G3Lb3MkD5t8eLzz1i4zRPzxyOO7d2ouumFmCgvE9gdQ7ckT/W6BvU+teAgrTEs21MJDGkmnKtic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llBafcqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llBafcqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C28C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746180593;
	bh=UYdcIU1JHGol2QrPtnN1Gz8t4cE851zSb4iuSnbRkwQ=;
	h=To:Subject:From:Date:From;
	b=llBafcqWogUKkGjSItyIuG0Xqem01eaHexpKbnGb5RJlpp4AcYvG1X6ipXtzkKgsV
	 UxU4mXtlMuptSh1FyOP9M6M8dLsYe1e1tXFIH84twLbj24YEs3YLxQj9s7q45maRnW
	 FhDoA59aAvo1jdwZp5WEQL3BX/QxtpvmWZpNvIg3DfS6sw5M7fRXUMp38Q4KIvchIs
	 vC6bvECDlR6iDwKUN7QI9M0AEQQPFXobR8bSVlqXanz07S4oqVFkA7gxKk+ew5TyNd
	 dV8aZfXgbtKAm6FqKe0NNPai7cPLztqfXa9fWromlkpAgJmV/Y0Sf6B033dpV3V/dG
	 fSVwLS960XN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4C3C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618059357.7442.675844855297289809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde5cb4a7c0174ba090c210e624545783cad18192679f1ef014c952cd98e9aa0
Date: Fri, 02 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746180593
