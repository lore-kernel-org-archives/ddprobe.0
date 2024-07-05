Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629B02F5E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720198523; cv=none; b=nIUywFfPZp1N1gKqNbqEjILrefUx+impBFjW9cAuhPi1QtnkLW51Mk57xf1Xjd3pNzNHq1+PIuZnkytAS68rpEijnCi1qvyEekdrvP5VVRM6AFnb3r4j92gMJ2YJryJmwDFrsIrRXsRZJTK7y7e4wAW1sGIb9ZtstOg+NWMyIwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720198523; c=relaxed/simple;
	bh=L2T4+o6YTg9076ItfbjWR74Mqnpklzxho1QQdSzqEDE=;
	h=To:Subject:From:Message-Id:Date; b=iEdjKognomFMaXKYq8rWYouXedDWnpmzCWoDQzk729XZw6cdVxU6gu6p6lCAFA+gECtcr1Yyw3Bbo3SafF/dbZvpEnqzNlMk5eQHKDaAQpSajILn+H2EsOm8gZJ3VqN2Egqv5h+9lCFcvdVDT67DjPk5Yl0ZKobz2+aEOJxGym4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsrngWiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsrngWiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C59C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720198522;
	bh=L2T4+o6YTg9076ItfbjWR74Mqnpklzxho1QQdSzqEDE=;
	h=To:Subject:From:Date:From;
	b=VsrngWiGa9IhEkhlgaT/NoZBkT8tblZgThCdmGXl47QUlQB0t4KeNnnQkLCyvO1En
	 aGC6s7srhRjuXAu9t94A6A8Xf24A+myEbohnZiPTjRih4FjVB/bWOo5FuRh7ytaj+J
	 K+XXqF1ukT9zZpqdD0nz7q0maaCXjUZY0SgMQbt02nec8sFaA+5obk5LTqVW4W/GI+
	 xnkeEkQy6WA8vwmsgP+Z4vYAjnF3Av2Rl2RfDWH/imhJdgZ/ioPI/av61QXIvdVZTH
	 cKxVydePunNjZq3riz5fDGKPhgrkWwOt56Xs3YwEbqvqVtV8lfp4zkT7ItVvqeB96S
	 TLfCxgclFuiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46DDC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019852285.16423.16781543152660572498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94700e4d9eb907948b5b2680808a3338e9512d72857d3440707763697f72bf4
Date: Fri, 05 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720198522
