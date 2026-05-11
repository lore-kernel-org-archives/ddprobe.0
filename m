Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1083D2C3252
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778480434; cv=none; b=f5FR/EAE5l1dGQ+lLWwCcCTzAQBZMs/gm5I6e2W3TrGrdSUmBVS1qSrGBgZ7+1NErNjczDBR2MPNthbRUWuDkPmnzlwubQU4GrvMB3dA9+B05Ar/eYSaYUVprFSbiajVFqEip0zDwSCeztASDTiQKrwZngbsGbb/UvRZrQqoj2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778480434; c=relaxed/simple;
	bh=TfR+ZLQlg3kqHOeEuDEY+lDWCi94dWljPXXrEH8Mv/g=;
	h=To:Subject:From:Message-Id:Date; b=bzrJVmIpLSknE5UTQXiX6KJtu3HlotMTFRDNWzC8FYbmPfS8OX99jwsM5nev1Y0uSbKAeE8mSDchOJABvM79QifHknLmHWOxwy8DxuIH635OWjj+Z1QnQj6jCup680lni1BWd9YFUOQJO+XPagmiw+pXCHz2lD8Cu7TrDEg7mws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjdMvxeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjdMvxeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC22C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778480433;
	bh=TfR+ZLQlg3kqHOeEuDEY+lDWCi94dWljPXXrEH8Mv/g=;
	h=To:Subject:From:Date:From;
	b=AjdMvxeqrfopD71FNL0jsC3l1BHYmjQ6wgtJXq7Fkeb15uW+zpIrYzwCGpMtxzKoa
	 71DoLOjq0ZffX55SRsRZNiqX4NbCuYq8kH5B688K7wW6biorp9m2xh24U4T/0VKSPL
	 DhU9VNBTEp2o3ap6Q1uAERBecahfjEGMlijHtlCTCuMXCCMthZplpbqi/xuNwBZ6me
	 J/8661u6v0dbLg3Cb5Wpp/A3Xzd9GrJFMFe/OAN0uaSf1xhMKMlpsqjFXM5hMzk4eU
	 konjyj3iQDVu3IGGJh+4dtdTJyQ8fJlTVuTJlJfHhdOWKIh20jCHaQwJ0SEgWCfq44
	 8ibTgpbsPnc6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1CBCD37B7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848043369.26856.11633983030388390049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dee94ce9050e4923b98e8f3cad1c1cedc0165cdd2461f15ecffef39f2faf3c
Date: Mon, 11 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778480433
