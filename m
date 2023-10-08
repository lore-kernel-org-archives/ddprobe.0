Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC755380
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 05:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpayx58d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4114C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696744028;
	bh=wRBk274ztWhTRegtMDF9rOPVcFYoqxcE62Ct584K8rQ=;
	h=To:Subject:From:Date:From;
	b=Wpayx58dHIxaCeLFRVJ5VVVK2OeWF262ggsCw0RNmfUb6pah5LaLYOXgb9cDwvpnN
	 8B3HRVLBqw82Y/irhvMY25ZEun4u7CMRYySIPu0XK6S4wjM27+LmppE70IK3Ss+8nR
	 R61mj3iKnG2utXaHML4MA+NZSpbwC/pphQjswYqfopgQn278wcW2buJT7Fo+LdfqPE
	 yyHkb07HrlIcMrSgU0Nl90fRdqIuIQYvg+MAbK4AYZR4vGv17+HBGYHve0DIrVAmgz
	 xKEJRWJ743P8Npc1CNDlewD9AslE6ZEgYXu87gqTzrzro7HxM4ymMD2zz7X047bg7H
	 Vm8O48o6Bus7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BB7E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169674402870.547.14706243710477316260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933ab807320b99bf35cb18ecc49fdac36176f13b9d958a7e6e3156586b0cb268
Date: Sun, 08 Oct 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696744028
