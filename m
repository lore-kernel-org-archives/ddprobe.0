Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D24F23A990
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746825595; cv=none; b=sML1kZa/IiRS58zq1EdtjZpQl42pnDo/og4qp23FA7UdLNeCmqYr1NWobhqZLG2sUGufPox/Vv7h29q9i8f4H6Mf9Uartp3k682Xry6VBKWRubBFIe8s5wjEAM/x6wezTn3MyBYy+z2NUkkVzLxFvx0Pp4OHjBDovZFN6GB8Irg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746825595; c=relaxed/simple;
	bh=KTiyycgXkBAIU5uiPoaga/n9l2/N5zljbmdtTEZmqDE=;
	h=To:Subject:From:Message-Id:Date; b=p6CyqWYeqKnlfcJKC/Y60Vu7A3clECXH2HkU+maFz/LgRZ4sHjYLP1V7zdavKXJCUwkubf+NnUl8xw27/jrxDdkRLtage81xVB/fzqzt/k2hNO5KEviK/J4aFPk+OPNCL5pEaTNH2ZXc4BouceMn1iI/Rc59KX1G2WY1SUGuLfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4YMkMvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4YMkMvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB3BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746825593;
	bh=KTiyycgXkBAIU5uiPoaga/n9l2/N5zljbmdtTEZmqDE=;
	h=To:Subject:From:Date:From;
	b=l4YMkMvvN8bE+rOrEPEV4U5GVXH9IDLHcvxF61xXj9k1AdNYAHXmjlq2HA92ydos3
	 8+6+ZRZE6elywdvRw+NtsozWCF98rzxyeqqFnSb9Lz2KuJ0qgkrEVs3ISoMkqWVyxz
	 ttAPNe+e82EMXg4OknHUEjxDHnFfEck84V+kuZd30jlEucKfFwUH1FciCmIzi393yh
	 Ujx8jBldDST+F3lFwwSd4N1X5J2ElgPrzH0D3481enxsKgz9XaG4Kj0HTBYwh8K3q9
	 facvtGCMzg3pEPa6KFe2if9d0SQUHfvp1TYLSorTVP4Ogo/AbwVWX1tj5fFUL76icg
	 LD5hCx8NSoYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E607C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682559357.30832.10725360201366645073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c11fd1ad4bf580b161e7afdda52d06e164c4364bae3e2ac919a217e8bf05e5f
Date: Fri, 09 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746825593
