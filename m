Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A85D7D07D
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699354; cv=none; b=bkW2zbebDSF2m5Kh/4J1tV0tiGxdnLRpJcWIP4E0fvlTMIOleYi+qI8xCj/0qLDfkrvMb5FynigpUrQ82uYXd55o9Ap/8YfMv332kxSvIl58HOgJJ4L1l625u8L7KR5fPHxd8FggY+apD8OmaTV1JUlSp1qYRkmhq3OOGaFsXSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699354; c=relaxed/simple;
	bh=oVMTJkS903t3xPiVOh+QfdasCAsGz5TjghVgjoayHq8=;
	h=To:Subject:From:Message-Id:Date; b=CWYXNK61tzt9S2n+v+B/CubxcJUPhXwqz0vhC0aSDJu4Rjc7OvbMzm3aBC/Vy/iEoI1cDE/xrPphhH6SOxra1VpovUKmqYzzaeRmb1G0ZMMdCUTvaTHVpuSoMyW3yJrETKU4emPDrDG+SJVvwGRqXGmYOv6DrwH1BY8bjeiKSak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvHomrTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvHomrTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FEC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734699353;
	bh=oVMTJkS903t3xPiVOh+QfdasCAsGz5TjghVgjoayHq8=;
	h=To:Subject:From:Date:From;
	b=uvHomrTWp8lpFvZud6U8gWpNSqFfaHkEOr8vaNwapv0UccAcb5b5SfZlRXNtghJZB
	 MPuGubrNMOuQjfQU6aYbapX+dCDEiJMIgvwVrd9bfWKgPsrCbCYKCJBmKh+9ZYfHRd
	 nzLRkuBRuo4ZxRiZQ3XzU6JMj8kXVFIK/LV0iVR5sDBdiOa1Qjkuaj8t0R4EmHKoIU
	 pmQ6o4V2qo0symXNFfuMQMwas6r17O5rpwz735pni63N3CuF8ABWF2YMak8IJkzrRQ
	 8l/WvxTiYGX9GcC019sZPWpqccmqZD+TzHeDg7xXf3ZrmqiP6LC81GoRiafA9dB6bh
	 mr6OiwtO+HY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A7AE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469935358.4786.14766020478239996515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb86fba9b9a2961df865c4109f0e16a18c794527933edd86a12355725cddb7ac
Date: Fri, 20 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734699353
