Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155A4328263
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762967994; cv=none; b=E17K8oUbOcNT/Uxjtb1rWjMDmNe9SfBSOuN77Pkj2LfKDBPt2zzR2JjIq2nkUOvQaqzt8ID7/JO6KS3sqo4WB5Yd73lTviTXG+P6AGUcaT7nQKAzEsaayp3tQYG2wFuN0JxWxaN5DI8cHlpr3GUkYXccs4EJKT6GN9U4x0TT6yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762967994; c=relaxed/simple;
	bh=sfCxx6x6hkW8Gxl/ZLNF1fe/DunLcJ5yAmPIiiLhv90=;
	h=To:Subject:From:Message-Id:Date; b=ZPe6tz1b6ihLQmd47sZ1efs3Pva4c8ifHNx7xIwe/VNo8T51bfc8+yPw7dVVxdY5+Hly0aI/KZYc4vu+WDNF2N2JabLjAie5+PlaowsJeEKafOPX1CSvke+cdrUKuU3k1EIU7NTVcaII+5CLQt3O2RoMyTbYB53ol+0JnkgZuhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXYYDNLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXYYDNLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB1DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762967993;
	bh=sfCxx6x6hkW8Gxl/ZLNF1fe/DunLcJ5yAmPIiiLhv90=;
	h=To:Subject:From:Date:From;
	b=EXYYDNLin4CH2IL0jf/xzV8VoN/sdoM8/QkicSVAATukBW9ssoMN44WBd/bZh3r3J
	 /pI6exa2Xx2m90YxGloq5q1X9VRchsU4w04pBCItqPJKjfHsir4RgBvvP8Xxn8cGTB
	 6Te2zzD+esVMdSMEYESaGwpEWl9BV9lk0KsdNbW4Quu6qKzGNB/9BQ6ygheMeK+dgp
	 lCzKWyLW+VBoOMRYPvwvjpJoTuwz+j8z2UKTUFYaKHx4LtR0j852co43t/JKfkQGB+
	 nTFgoBxJjM8h+cvtW9hqPZ4KholnIVdY5CxeLa/slwWWc1BPQti+ox5gh8bcGX+jLS
	 ySyTYTL1LuNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D6CD3429
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296799358.5574.2408399827083997063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78247fcaff428d48d5dcb3f57494fb9917f2b1173ff1039b09f387a37448eaac
Date: Wed, 12 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762967993
