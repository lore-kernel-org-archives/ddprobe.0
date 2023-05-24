Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC691C11
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B50BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684917306;
	bh=7EN1DjbRocNAnvP7LBzn6mfUG/Tib0TgcZd2aUUmXwo=;
	h=To:Subject:From:Date:From;
	b=s1N8AnwzriPcylX+yQq6tXI9jxvsrWeylzu6l8im8S0M52pQRRkVroJICB49T3h6Z
	 aTw8heEWcY3f/qKSDb1mVVdugkinnd5krPe9RxGFLjuOsG+Xhyvm8tHEUURsHnIwMC
	 JJaFkBWM8qQx+teK7ZwFmiWbZ8n74+BhPIzKAvnZSNqXygGr6gWgBCqfxBWziUP8nk
	 rO5kwBx/VkD3NfHNQBojB3rL9VJ6Goa4Lcr75ZdyCQN4SKvQfK/Nm5WQQNaXyxoL9R
	 qppgo8aPMdlgxUwS6Dxx74DBj0aFN2BQSeTB81E55HyLifM1859AzK+3Upxf8r8vPh
	 Xk/xBeypTEYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E668EC77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168491730593.11031.9919858836870440972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47cdbfd8329004972cb4ec997a7224b496ca51c11148b1ef7de4e047820d6f6
Date: Wed, 24 May 2023 08:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684917305
