Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9C77B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6831FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666387253;
	bh=GmtA+Q6GM1p/gTje/+eKsRxqs5GUelG4QV0SpwDtM4k=;
	h=To:Subject:From:Date:From;
	b=JfJvz7r6XEj5wvpdZkFy2uSi7DHFdGJ8bildCU7vUMevUBB0i3PO6nf1G1g7FTsWq
	 XH9MpAK1i5ozBWz+X59DBXeiUQzu+vzRxuOHRy0KDoBCW52Cn7GWEwfVxN19spXhSw
	 qM7NhlmRJExekGeN4rVIcoPu6EOxVNxbMR+OIOWbCWl6HVSnzWtqX+HONgrh1jQ+Ul
	 RovrrJQurpcCu9bPfpsdSOfYEZn7UemuLuJcVYw3lRzAYjxSVTUR0aGeoFJhJOJkjY
	 S/VYKaJnApDMeBUgqEoyczhn9io9uy+948xNxensc01N8IzGVPT8EAt1TDVshGwaBK
	 v9FbhqNe45TnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C81C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638725332.31632.11851546112036011094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa53878a97a47c85b0b347eecd7dc1ac5f8cec4793c59321e96d803b17c8dd5
Date: Fri, 21 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666387253
