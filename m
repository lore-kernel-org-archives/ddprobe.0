Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DB21B8E6
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9493C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 05:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684818185;
	bh=7UkNEi+y1j3Rzzkag/kSoYpBUur/xIAVnGyjO9/wULI=;
	h=To:Subject:From:Date:From;
	b=AbOXRpVRCvUWhKmVvwoSZsqSlHn+lh27MwfENfiO/dPSVRn2BwIy43tb5+GfwE14H
	 XWRJ7ttHb4ddn6H2v2xsA17XKKcR15afH87hL9yCoXAAgMHFBdSpQzVfnWrV45xCZS
	 TAIskzFyfhF9JVEhNlj6CxdGBQ/tm8/W6cW4CjGabPqIvC4vIe9yKW7KgeKac5vahn
	 MTEC1eu/FUEPvuN7JRkHVpkL0aw95tJb2riSCt8TAx9GCIqrjDaD+ogxLHXllI26jQ
	 nlezOtgoPC3t79VSv4oVgM83/Mu694E6hiJEux31xa9+9rVq0hBjvkhBEfUFlP0WwH
	 WoF3YJ/eYcn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA592C77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 05:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168481818574.25587.17339673067837037583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f89b51b1f8808ebef6528b2f65c9c87109edf7d0c1975f99cc3c6c0069dbf1f
Date: Tue, 23 May 2023 05:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684818185
