Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C19524A7C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948754; cv=none; b=LDk8rwjDocpoqqUJ9bACvpTrOSh5FhRjJpL3sdrXGVDuaCalLicaFhHvXf3lhFMmC8uHiEBjQLKUSZUCQozfVNCslA9zq8yDMtRAsIeHoU7mVlJ7uqMCxKjL9V8yWe5r0Ao5sTi+z7pMDI5y9yp5U62RcNlJ7f/7mBQDw5tF9vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948754; c=relaxed/simple;
	bh=PuzS7ybz4Sbo/uga2TNPtD8UeVPyGRTqAFamX05tot0=;
	h=To:Subject:From:Message-Id:Date; b=JLdulVKR/BNgulx+KKb2Sp8MrSaKMuEXG1i+6ciVfejup8HlnWuY9gwCpmzoLUCgstp/GAFv7g+ngAS86mnN8Bx9jJO7ka+o3+TIznuamnbtpGK4cUHGu7BbH+Unqsd1dtcgToG7vGzj63CGxls7zpSQbJv74K+VE0qxPROHK1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMIQMvW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMIQMvW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E42C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736948753;
	bh=PuzS7ybz4Sbo/uga2TNPtD8UeVPyGRTqAFamX05tot0=;
	h=To:Subject:From:Date:From;
	b=aMIQMvW5OYwnuh8RAFMCYrkV53OTIlFk+V2FXPNl9WaTjIYYo+ix5YkRzlLIyDgsV
	 lshnfsMLC6giIzZovtVDWh2LKC3/n1AdMnAvrxJtBeab00lz8EybIjrQdBZYDl6ezi
	 o2PmMnu2iH7E+uUqx5le7ZyLrgULNsXlLELMN/Qaa7sGHzCJJwZJuvZQxSGOd7Clov
	 8hdEoCvs71ZDhIU39tSW8RxjrXRoHAw+q9BmTNs7itoaFS3SdSwCi3FJhowAwoO42r
	 7/lj/+MD/cZorGhPxnDT2E85ZJv+CWMM1cc3A9i1O4NRy4ZFapzPSXeY7vUSs+LWg+
	 LDBfDVKE3BQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A504C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694875362.30995.11986776366536434391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c65ffcac0bb5812e02c3086e5036444dc72306215811c50c1639ae1988545ea
Date: Wed, 15 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736948753
