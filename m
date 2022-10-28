Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1D17B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D457C433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666935654;
	bh=x4B1w6ZQUaKrMPzn2Mi6Qclv6aD/zxU6QTaQnOgOH+w=;
	h=To:Subject:From:Date:From;
	b=cp7pbnTTS0aj6gVWtJtl2+YW44MvDXf0+fTig8+RtZyTFkvt0EfamRdmlz8zCNJDi
	 G4c3HYPpLcxgsosnmjdaSjtX2X2Cx4JJZzkQytigGevyrNynatCD8s6zSpEi7oVyb/
	 IpCj85XLk/CcSbqFT10ptndJvCEMlSXyUts2TPdNZi6LSn+mlzjKSzpc7Z5jSafyan
	 Afp0wopIcPywqshlk+6zbEgRu8DLgIpfBrqPgQlxnEC74JtsnbvtDm9bokJvd+tdaF
	 KA0Sx+rtx6lduDav5KINjKFlQ4WgeudVylewXA2w4QBCo+ivwhmZ2vCPgTsNVZcbFO
	 OIWaHG5UB7PXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58980C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693565435.5989.9156165390123996321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea462e3f7ab3f6946dfb43496cd0e26104cfe956962ff769d0d5043ac633a6a
Date: Fri, 28 Oct 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666935654
