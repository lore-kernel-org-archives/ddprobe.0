Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3592D15855E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744147794; cv=none; b=VgUlsss2MK0Vh4LeUe5QZV9Hv6BFfcUu6OaG/84fpyeDvBOtYN08OTw2MBxLzMKosZnPGzx7FfmBjXpDOMZcNYQdP3n184FmVyEUPg0QUxx/dQFSq7RtGaETU6oJPw0X6/9uSKZtYznqhckSUfs77AwkpQvqCyOvtuUn3colEu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744147794; c=relaxed/simple;
	bh=oap3PUWhGweEbVEDcLjsuACbovWjcNBJZx/IJUkhu4g=;
	h=To:Subject:From:Message-Id:Date; b=adH931PO7C1DYI+gDyyuMtI9x1gY8nfgw7/xk9UshHgQlo7fKJcwV3x36NL9quG+P7JVcvLuS2Qi4k0MSw3DoohHTWjvr5vqU5Nqdf4pECItDCcV+s79qlQwV3rmyE3GMxFDOo1vgrct+g/7MV6Nf0m7QmCO9d3w1Q/wGavYMiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbX9x+t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbX9x+t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E3C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744147793;
	bh=oap3PUWhGweEbVEDcLjsuACbovWjcNBJZx/IJUkhu4g=;
	h=To:Subject:From:Date:From;
	b=IbX9x+t0J/PuDczf9Dj5Cis6GRWmiOUEHmg/n+9q2Xdy9aOgp6X5byEPho0EqHEdK
	 VKty9jh2MDK6xWxjVbVK/HAxQ9mMZJ1lEGln/PLMZan4572djwNSG6pUzEQ2o8yFju
	 +vWRQ2lIcmFOEhD73IFhXXQqJutCmXUnTEnMOdZJI1fnCtnDzluTDeGkLgqFE1bVwA
	 hVe2vdE6Q6yE91B5UxGKrI2qZaDhvRkGTarzCZAMAgc0q88Je27WfQTEXu1TNYOUlf
	 0rLiksGt0uWudW59vWMLCgHtlrycFutb0P1PDpzdwz13RpFX+f7P5dPs0ozZ2ufCA0
	 yQDGb6yJbXuxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997DBC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414779360.15351.9905992966943040108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49f926218b177452a7b6b611251e705dc5fbb28e825d068fc2b21031756e5f1
Date: Tue, 08 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744147793
