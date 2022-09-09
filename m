Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0F2632
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAB5C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662727253;
	bh=sG/fJvrLcj/E0hmfGRTHqswhjFwimy1FOwNGokbI3oY=;
	h=To:Subject:From:Date:From;
	b=HX6ymox69stfHALynBXFKYCktCse9dUDNzVBiBWIHADacG2WDubfhN5JWsIcuLxMj
	 4VX6ONzxr1Sf+yeIQ5S1aUKG7fvQWuefzlC558U+PgKzxXPZvvQ/SRbORh9U5Ej31y
	 uk8OrExOE8+IJOD6Nx8OS5vgda7JeCn9KEJokw6nIjGE5HKCtgpzQcQw30eQPdwUd7
	 wXURw3HJM1IORK3heSSjKPvf3da7BPQjmOqRzKJZqLEjxBNzHRreirkeut5cZ+lW7O
	 /Q6M/4rlZipwetERHEaely0lV2Ydpnmgazuur4vZqzPMUCNlp/0BFJQMCsxVe8eyt8
	 ApxJ7lldIyowA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7F7ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272725331.8707.7310486702252483601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1baffde6e04c1e6a568d2848e85c42ac7a5a9395cce5e12c3cfedc853c8aca0f
Date: Fri, 09 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662727253
