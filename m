Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3378E2568
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Srozk2QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C782C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699768096;
	bh=eIx8sUT7k3VmQ7Rr9nJlB1d3p6qLs058HZ7JABJvZKo=;
	h=To:Subject:From:Date:From;
	b=Srozk2QR4qAwmBdddhfUDfFUi4NiIreaOdQ+tJq58WuMZiLdlVWQ5SSZjaxW9ilVi
	 EyC2Fs2zcotMO/xbdGYXdYvDjyjs6Ns1WTNfxcTSqj72bFgp9s6b9C5M2c9TFLhY9P
	 YAaq/ojWip5MJqR4Tz+AzuA4bMd4jMWPS43DdtQ434i/Jfkj6yg4EfJbUpgfOCM1YW
	 8mawvOJcm2T63HRDa2Vb+JLpFByHJxzlUKXNGw2vxcMgPOxZV8uUI1UL9vHkAMjmlu
	 kRswXLgU1Ywuj/4DNK6WW2WuxHKFyeD1kRaLBKDZrip3RDzQthRv4q+KES5KzBDDzT
	 2534ToClSj15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FA1BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169976809644.3241.12799293530401616523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08d0685c96affd4377295a5321c196e3558775d7e9f436dc21d80ab1cb74e6d
Date: Sun, 12 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699768096
