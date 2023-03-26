Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411F420E4
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D38C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 20:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679863325;
	bh=+VoCcmYol3tdYUHsDWKbcFaL+25pdd7h86mJicAyghw=;
	h=To:Subject:From:Date:From;
	b=Yva/B1zp6oD1oOFfO9tltvsRbkaR1GszDXNUvQVeQYWM86uvAjUQIjfKoLyGYN/KM
	 Wez6jZjJb6by+yvxB31j0hI1/U7LZ37Lwnw77ZiVA4xGWz6gOKcjG76gP1vAd5fBxZ
	 93N9SviZXxrrevRogpHTOsI3GV5YhyRol/TPF8DDvE0UVpQ7bCzd0xQBYmAE4B8sn5
	 der8OTO+uCKDapyz+7PmssAdfhC2FaXS9JjegbEq62myTAhoWOt9LgYlsfPSXaLdm7
	 k3BEdMLD9/tpnHrT5M47i8ojyn17hFXtnoIJORVUKcnCXjMR0pBkVip6/3B5YVMSjC
	 KNeNgyE1ganpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7727C7619A
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167986332580.17964.8903139433666966833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8366f793a8365be2417420defaf279e3dd95436c85f46173a22d11af8ffc32
Date: Sun, 26 Mar 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679863325
