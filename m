Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40BA3C3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB8EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663975253;
	bh=e0aLo87zaodXQoX1UGQN1IyPaZTaS3Xg0GWJ50wPecw=;
	h=To:Subject:From:Date:From;
	b=oJ22xnWjNHdTZexvEGJCVxhGl7WsdS4Xc+Z8T3guxazumQmErfUDr1q89sN50ygpl
	 5lHREgfY2ZZwSt5gnyKWkZhefF4U8o+VEl+h0ZOsoR9nG0Dj3+J56T8MG7jeKn0rpR
	 cdqxjBbKrrUMWTjJhRC99mXLi5ehn3EBjsmhJ6IufasOby4Jqw6ZrnnNnQ7ORx2q/8
	 B/ITWsVPmKYxPhOVinZfa60oRkHvUTeOY81OrYQNI7j1oNBozrFZmevUUEwhInHgrV
	 DY8PkdsZVsUXo9mm8Gko9YeTtDt81VvOHFos+DpiCLjfCx5Lm7ldCcGCnCucc86Elg
	 w62lQIRCup/HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEE5C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397525332.13997.3238468160230427870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7fcbcff98619bafacf9f7cb476473309f207c538f7302ffbce06888adf23fc
Date: Fri, 23 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663975253
