Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBC428DEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753093794; cv=none; b=ACjEPnH+udY6Y1u0nzV2xAAq40GArmS1lYhIeOiynB6jCCrdeXDWJvUAi05VRkxVnflGwG1QUHCeUWA7vCT9+kRHmLu+gIVLIN7RtwqKorpGTo9GR9zuuhhpDSP+/uaCm3JWB974vjvMMf3APPlysuZkm4+nbQaSla9IIalmpCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753093794; c=relaxed/simple;
	bh=Oz+hJsJi2EPjoQqvDn4QYA0WF3p7FqJEGL3fjZqXrWg=;
	h=To:Subject:From:Message-Id:Date; b=gdSuj36izPQ+8JlZ+tPWOKR+t1Z9TEqcspQNgzgUEcyZFbqu6DaK7acdTGGTkuzfbJbCLYXi5fxsgUf42JlAQW0GThZP0oSIPiurcPHWvdCjdMH7Wc6IrGx3hVVT3RUT7kNQw015ZeExgkW4RpkIVzEskslUSEpL6IE/qzqKMTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZxTu7Q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZxTu7Q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753093793;
	bh=Oz+hJsJi2EPjoQqvDn4QYA0WF3p7FqJEGL3fjZqXrWg=;
	h=To:Subject:From:Date:From;
	b=CZxTu7Q2cPrmqH48uX/jDV6dz8cILZkuMYZ/mDPtVB7LsKKhuW5xTy6aV+dmoGzD8
	 BDCuux0b6MJ968cxazs+hfA9LghgKoJpDvcNH0bZZzWvOYwzIqoAn5hkko4tdcGuy1
	 7uSVdT1Sl+ilb4mP22WWUNEvcHtgSgBQ3ttyjuNZHwJ2xT1F6Ixh07gRrCFTcMI/fy
	 HAshooixGTKb1oefpkZSTRNF4rkhwOtG+aC/8Qag86nuWX6d2v7UBP1wX7kWQzgkPK
	 JxwnilnH0ep/X/yceZP9WRU6hHcaxgO+raVlzDWKAHUpVJMnYxb4zg+5K9a2bKm/hO
	 xys6CHHvmu8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8DC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309379358.21419.14947495273768748126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431effaa56d0e120161106d3c327749b6c4389143b044b5416dc774cc6e21ad0
Date: Mon, 21 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753093793
