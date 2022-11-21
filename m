Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C982763D
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B64C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668999054;
	bh=YXyjwEamd8OdHONMLPhVXsN4gHhh6jL/G+WhbjewL5w=;
	h=To:Subject:From:Date:From;
	b=XYhrjK2aGfaK/7mu/OS+A/LgX7YdvKTNlR9zo6sLH/1yko3st70zVVA4pXG1pP7FX
	 Bcef/fj6xNLfSmkMPZfBXzbKM85PL6UN1Q547y7uXoGVctqPO7tmDBC+axunj1AeNA
	 60BbES3e9PTo5YfTrfKix2sXmwI0UJWn8AzjS/kgtaDEE4qtiIuPb8i1jvRr8eyx8D
	 TeH/Yej5m0RnuP9rFuJor9RoQ1f9K+UczxX8iOEgSWF6F4Ct5cWKaN5Y6Dg8ShIk6F
	 uo7g1973Vql2B+jdoroWDy55lcmJQaCM6N07YP8JB3ae7TpRERl87oSGaqblTXVSgH
	 ogxkWL86HRvHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A559C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899905434.6184.17532990119299847307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72970fb5b12aa0233f22582d7185ac32135e62c6d1fe2bf05bfc3ca9e4242217
Date: Mon, 21 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668999054
