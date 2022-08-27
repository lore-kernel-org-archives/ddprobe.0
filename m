Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7E515A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5CCC433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661569852;
	bh=uRPMRBIP5LWfCqroSXqzRt1y9Gt20vclFzlIIx5t0L4=;
	h=To:Subject:From:Date:From;
	b=gU6YXQhPJgnrNP9Q7HNyz1SOYk+0lF34kd3/N+EmS8D+zm4djPxcg1zcY7VOwnFJL
	 OAdS5cGQrIJhkmfnbPeO5xmhtCxFxHrXTKn3xs5NLXpA7+ikWc28KRqIbCo9KIeYG2
	 76NEC7B2ZP7A0ocMzvi0YWm8YV4nv9b2COyh2LHOM1EOstPuwhna1kixQ264MuGbye
	 DoQNyWdv2jaBB4R5QFo5lO+tqrQUCO6FW/VriJH5GK37ItFRTFScAvj62NFgEaU+iJ
	 g/A2BXNgm/MiNAJzm6W0xrD+d3jetxo5CL0V2dgCR+pVIEY6XSzZkDY3nXyepy6R2a
	 oGoOWqnlPXPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A39C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 03:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156985234.13042.7518805431354808310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6585667c22c235f1fa17feca9a8ce4d445f1a715e5a0660c10f42e2873ccdeb3
Date: Sat, 27 Aug 2022 03:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661569852
