Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD80D2579
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A40C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665268853;
	bh=wk5hjlU1bIuq+eRMYfCXqbS5mgeHIG2s7a0SauYNYT4=;
	h=To:Subject:From:Date:From;
	b=R11INg4Xk8b3ELXbz3QRnkmHr8hfsE/QUZnyR7mqhDMkkYnlDsmsXRLYX/Ay8hI0P
	 BxcRkTARwHKwPSOt1F+XdsxqJtTTuGsUjqIzPTGAxymWZwWLqO+Na+1Yl9oQuYxwHt
	 ub9lmiwK4kIxj9NQ+snGtuyh5Hfq8IOWHtaYthAq3BuSESkNTP1lzJapbc6ueh0jvz
	 VWuVZ51/7B3wRuqQHEOWMSiQwr+H/8rlkYXqRZ0+wlRKl71lh2YdRIs60K+wtHAQ01
	 BFPEcfDzxQuvciyivekrFqMkrz3J0AjixlLyt7qoLgZTQuJb5+SnPjmPBlH7yTwLs9
	 PGGZeRXuXr/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A22C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526885332.10506.12599093316622581467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c8883369930f27af9f13840cb64132fb4542482207bc3caf29b626605d212d
Date: Sat, 08 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665268853
