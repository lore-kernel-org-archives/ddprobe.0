Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0998AA50
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MavAvl6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDF7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700789896;
	bh=//K+faO/w0lHef73lULVL4NVTo8a8txOxwRxNsf6HDg=;
	h=To:Subject:From:Date:From;
	b=MavAvl6eSoakHqT3Ck312nKBNhdEbX/+MKyPXOdgS4frc2PTtN9HAp8oE+05h/KwU
	 bl4gn019tb8G7kZ4Ap98CiJPEj+kJLCTgQWtcWL8xAQ+GhDeEIEPjaHXobwkotBEdp
	 FymQswEx1UlWoUdRhk2XC6ypTXJxWslIeAG45r0yMF6eBlnNJSC0MHLvCf9gmyK8Wi
	 4lKiU8aFmwhpWOr8mrq5PY9rxoboNUtn7Q0PkouYXvyR+v5kX0fN6swVh0zv2W8r7N
	 3+Bc5HGv37pruJLR5wWMeb4Qqfual5QtvfCd6agPF5rLsO9i30Rf/6seF4i8AxGyB3
	 pX1WdXuE61rmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628F5C61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170078989639.26163.10345987378105122225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf355f53a56bb52634635cabc24effd31564857277b75006a44292c367e4e223
Date: Fri, 24 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700789896
