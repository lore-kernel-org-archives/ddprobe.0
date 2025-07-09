Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C42283FE4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752053994; cv=none; b=E09DniXIW+7afxSGh+tiYKOnfaZoRZA5/4r0yYMsKJ4XzkcK7d1fU0MrUUtn/DI2SCB/yC94r1AL+tJ217yS5eCE4Tp/1k5ZYfWb4+Ri5lOD2JUY1F/r6z+3wz05hBBNZgxKOyX4R0uyR9ESnO8PSIoBQJHRtjlyMrlOgWU5wig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752053994; c=relaxed/simple;
	bh=1Zy/jYxKNWdmZqbvJwNVlUHGQPZs0Cx9mgyegyzFGVg=;
	h=To:Subject:From:Message-Id:Date; b=MX2KLziZrhdRAI9mxfzRJa/oZ0871EWDFr/jYf1Mbi38+q8hGNKn/LQRjYSh9CqW2NFf/ylrlXMqDhu9kZqCE0oEVk4GID+HQ6eb30t16xDqlMB0/9Q/7VIMhm056Dti/u3MxliHVQtwRDKRgEMQhJ1tWZLqA/JlyIRjg5NFOd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4B7l4ZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4B7l4ZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ACEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752053993;
	bh=1Zy/jYxKNWdmZqbvJwNVlUHGQPZs0Cx9mgyegyzFGVg=;
	h=To:Subject:From:Date:From;
	b=J4B7l4ZH2o3zPbNNWoOFuVHRPZWGZuW9eTcUC2w51YA906curC+wPHJqjw9kgeDIG
	 9MCeQFTjhBQHn4kaoVk1R1g90mlI2gh4BeqDHGe1q1gq03i4nn8KqusQtA2JtjLCox
	 M69iJDeiQEQHbQJGw3Dzp5Gk+XgShaFsfzrDPg3WCOROCVdhjVKuyyDrP6dbRfufik
	 tuNK/AYEf+ShcjPMi02wM8SYsOWFv6A+njaWbX6eaKlpCbVcvtUmYL7wIMQ6pdO1yA
	 mpEbYK5KPClolxQmOub01g5DDIo5h2e5hgEAC1ByINHEGWjbX7jIvU3EP//WS+Mj1Q
	 2TgeK5tX3DQWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27AC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205399357.10319.1215700699648420949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646443621fec172ac69fe5dad145f40f91152e1ab3654a07259e6cd1f3046995
Date: Wed, 09 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752053993
