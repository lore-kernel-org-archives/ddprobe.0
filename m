Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB67E803
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DD9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672118487;
	bh=tRCYztpXkwaZQdyo2N97nX5gcMYIZFg2qvwE1uYKk60=;
	h=To:Subject:From:Date:From;
	b=G2KL3pFl8UJWEJ3NZFOR3ZI9mBdAo32XOQe45N/z3xsz+8bDVDqStYBIHeafS55eV
	 FKWOlai4M95e2BeXjBDRxtUlz4lc96sxh8zVo7/1G1kgX38fL38xz+7CjUXXWp2H07
	 W72K84gwGo0UX+kmZP7WypXTBy3Eyiy+j/urLamjyXDc/Amv8PVsByYYGWLEJSBygp
	 xkhrk78oXBPQyACn19ihUVsnMugrwstCOw8yReOtHLcct+NFtqS76Ijmz0BDxAacpf
	 UywkRSa9vTClzRcB/WY6PEfO4VouFbpc3XNW9W1XiPV4uqbPpKMyRmqzoSokGEHcO8
	 vifUheMnXSE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69673C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211848742.3236.5586536988840498499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c1e6679482ce9716fa88a6b6843327513493bf4acef5bd5ed82159a0122496
Date: Tue, 27 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672118487
