Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3344B3246ED
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765389774; cv=none; b=Jx68Lzh4Suwj3hxELt+8MfyY5gtqJQX6Ka6RDKpJPXmLN3nAjC0lG041uGlsUwVil9gPFdfGRb6vXCki4oqkjyz/m1StAOOHLgL+GwM+wTReBJPKKrBzawUkv5B4TqMLtjjSOBKYJZnkTuJagIx2GHac31r48pUM3CFmOa5WVy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765389774; c=relaxed/simple;
	bh=MyYB9twccYbAHc9hRjTGHZkAn4pKFQMpZ7HpcNjkwCk=;
	h=To:Subject:From:Message-Id:Date; b=OMI60oTS04uiwi2bHfIf3YX9PfOc6XuTNITrEzDlm+/W49hPTUAFxE1yQmhqyRicK+61Fj1ndYyo5Sk6SvslNNPcg8nCIE6xB5pUB/7d6359Ud9gYc1Shqm8aITHCvD5mMo2RUlx/Je0EYtSNvQ6tP5IXcY6DU30caq5u+tt94s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucprCkDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucprCkDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0494C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765389773;
	bh=MyYB9twccYbAHc9hRjTGHZkAn4pKFQMpZ7HpcNjkwCk=;
	h=To:Subject:From:Date:From;
	b=ucprCkDznGi0CLqxKfSGtByUzNniKr4j0hzGrj8DZwgg+6LV5dy4Qj28Yql2eDfjK
	 Awl8L134WX/aoNS6J7ex5Lxyl1DumE3uH7io6Jh82NPNcMSMwxtk+ZF1/3oaeupfbA
	 am+62029v4TomE0Go3RQF3mazf+LHAw+hAr1xQje4Cwgl68/FQTZVofSLuGUgcWX0Q
	 gOX64g8T6bDZsLlsV24pgF53W0SrkMO4HBwolckKujqf1LZ0CnC1OGd585PXZRWV9F
	 H9R2qUYHQ0LPJYWnxlyNedWSOVGQIxeAzAND1xP5q8BLkl2UXoXj3RYw4Z8u2fCLC9
	 VKinBnPh2z/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C331D3E76B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538977359.28416.14161677579880675434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b05f90a187fdbee0859fe46cab48d6e448c691dd1f3a74b3c139fa416b3a642
Date: Wed, 10 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765389773
