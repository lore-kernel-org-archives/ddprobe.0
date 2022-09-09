Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC92808
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C92C433B5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662724853;
	bh=eMv6CVQZncW41l9ObQm4qq4wGzAYWSaDEh+IPcQtZU4=;
	h=To:Subject:From:Date:From;
	b=lNPJxfpuRNQuOczQrOXPv2SVJDNvgct6REVvS/1VPyQ5jgIppM81KwwgJUlxThy2l
	 TaUPGOJQ8CzGj+T5dZguyNYul8ywGwO5hAgVhhyZ8zAdAITyXP7cPy0aC69+jG5h5d
	 WB8q5sRZare54dG0PlgY4WjM9BD56/mxUUNQFobixDUBW82FzxsvKFWIxiI7pTV5x3
	 ZvuIbWYu0ITzWLzba240s/T426Xqen3aDUUPmvMoMgFjFU1s6RJhyhdsZXfpXKWzNf
	 9K/cghKlKevxI5pBS6/Xj74MP+xlb8Pk82HVVDwLQJb3UPg0tiEsYV700SuqWV9MsK
	 AZ2rwTL6dfcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7249DECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272485345.20303.6783473167315347443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a13d2ce94d4261fc9be37d22a86774e03ea70ad06f95908255abaa8f715c53
Date: Fri, 09 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662724853
