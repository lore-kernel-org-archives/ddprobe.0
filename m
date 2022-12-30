Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19E82F55
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89778C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672442487;
	bh=iaXbvhmY0pYn7OQE1ORAjnPCAwGw/xXjd137HXwMb3Y=;
	h=To:Subject:From:Date:From;
	b=FouS4GsNe42cx6uDmxobQmdzdwJbaigEgvxHRuxLh9VI72ghaaCO4IjLGO3XtvPcQ
	 QIcmoOF98pg5hL3dHlXHP1RkB4Iupi9DjPztoyUhnx/ah0BwU1cqv1qPOR45qZuqM4
	 HzcZaPGfc+FDF7y1llUmsS+yEmYiM57Vwv0ADgo/8MXf/20aUx8LuZTbd4Afm9Ql2f
	 dImNjmYlo4Tqm1Wcrdz3IOLolwAYxSzmlXvKYuh7eby1Q+yDjjAVZRkmUgteWLdbSA
	 K5YF97Mal9thoz8fwAOgO1jJf5ol4gzkyqJjechH5aFFnAV2qIikLYTBLawinpq+9s
	 NF7qtFQlFPqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C891C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244248743.2231.15640053968871510133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c43b782707daef4d31b89358a043c632b07137b84863f739932f503bc743c64
Date: Fri, 30 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672442487
