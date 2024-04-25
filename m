Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5049837700
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 04:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714017683; cv=none; b=P1OzVt+qDltzi2CN546KHImhG9FswqDew62Wfjwif03OEhDHPwAwxS9i0l8uwUXeEjmhvUXKRhoKs/UL8b1qrW21R9MFAxPQhS4f1r3e6v3wPuCLj8lVCtvSRUDI2HS17H2oQuEAF2saPp7hNcHu6QI+gRW08vhf3Yw3OdSn5zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714017683; c=relaxed/simple;
	bh=uYOe2OiLETpCmrKEXaokEa67/q9Jx+fvEbmcpxUbcJ4=;
	h=To:Subject:From:Message-Id:Date; b=JUK9LAcAMejUSZxIIHJPx5JPjkpUcDuCMLqbc4C/j3aIYiigcerpAi7WrIsA7Vfcic3+qTmq7B0rk0nGwGDTKPVsFFVHvGVrv040QpNqahSn7uulQvxlb/JEDCIpxmKDn9y/UrTFg/2S3YfZZE9FfWJxeTpiV60dMjWj/iSmKzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYphOCgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYphOCgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCD0C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 04:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714017682;
	bh=uYOe2OiLETpCmrKEXaokEa67/q9Jx+fvEbmcpxUbcJ4=;
	h=To:Subject:From:Date:From;
	b=XYphOCgibhbA93yAF5tRL/aQ4Lia+fPoIAYD0qs9BndwZLVOfdv3K2OOeUHO7gu/5
	 SH6bipmdaxc1YXOmVhKW2N9XynL+4nrlMHeMa6u24j2XvFNjkc45UVQtc70TI7KSBM
	 J6lCAORNK4x4XN230QtCc7DBi5xP6Y588aAI5N1OWXII7YxPXLDz1mDMG+UT9xlYdM
	 tMccjoyFxSbGNzNf6ev7IauDcI1Vx+KD4JJgeXYXBSWl77PMDQl7lMiLY884YAy4Tp
	 VuV6z3KJEsN6I3h6LChUuWHpROXKYP6vIWO/44gx1TmuaKo+MQMnsiaif0LrA+MDXe
	 BO0eYbfbJSOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A61C10F15
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 04:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401768277.18436.5683805418371965860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af38447ef1f52ebde10ff88afa472c62b145ffbe0bb3112052267306ac44c75b
Date: Thu, 25 Apr 2024 04:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714017682
