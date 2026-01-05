Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7631326A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767632034; cv=none; b=hRMsP3+E6q2L9OcFqf4vYsltpyydM+qqD2Pf1Lb5sEG9Y73VoKia2qdRK3T39Cw/mzcGSv/D5xYZvErWywxAWmen53yNPYUJBDtkmCJyW4kfaXN8vTyXCFH7y6Jt29U0wlKRQ9Ny6TUBR8Wmd0QBRpjCrNNk8Wgrm0yzZla05Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767632034; c=relaxed/simple;
	bh=A6U95IeeHBqaCGEK++yiC0n/YlITPMeja7VrRnYdNKU=;
	h=To:Subject:From:Message-Id:Date; b=OGQ+gFpUxmSp/yhT0oxuLgjBwfd5SkaYCIwLc6kLqF6drn6hRgiFNNy3rKcX1gOJ02eBSlI84oA02eUewb0vNHFluDjN2zzgy+5Feckl3JxaU5zvPw+5XK9HzNmXMzFB7CSnLeZPBZnvWc9g6Z2ZZ6EudQng0mJ5sHP2ZhMhbRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8VfOJ0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8VfOJ0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E7C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767632033;
	bh=A6U95IeeHBqaCGEK++yiC0n/YlITPMeja7VrRnYdNKU=;
	h=To:Subject:From:Date:From;
	b=J8VfOJ0H25ZutoxzGh3qhNHD8fLWEBrGwX4DeHfoDs4USNhrq2jO2ozV2KzIlgPhq
	 jeMauaBKZc4d3l+sccgU3MqesA6QdXPT+c64YVrO0ZFMTAOhoYgyci9IfEIk5ptN1A
	 hVPtOxV1e87y7338mKlEJkjkjIHRgVnOTRJ1BJ7iHIsr3+r1MujgALvgCDs4tHjHZI
	 73wRdSnfl9j3wR8xNFuG6OThRq/bhvvdggSXB5VY2Et6IBt6Vzdino6Kgz/WnpiUBi
	 VWUcNi3l22bq7eIeXWJD9U9vLVgTCrX3+ZN2j4mB8haiaOuJukEYGHitJptiWiShGF
	 XRp7MK/CXGI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93394C79FA7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763203359.31712.17622659269732686125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9521f4548660db9e388eff03e48af0afc59b853e11d46796b0c141b226ab71
Date: Mon, 05 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767632033
