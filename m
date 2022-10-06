Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC14733CF
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70418C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665081053;
	bh=6uGNE74RcGsEh8RutYlCrv/sKtYDWxeBwq6kM/p+dy8=;
	h=To:Subject:From:Date:From;
	b=C675/xpoEgJ392GvvpHtzGMG/rmIBTiU2MgvqCOEPY4qKEIa4fwX4rBEjZ5IUTEN2
	 AW9vXGHKdrSzOIR9HJ2TkAqkNTImJrmXkYwizpRnMt2xG+ZjS4ANy5WsAdHnhrFVpI
	 jsekMhe3GeYQ8ebsgy7Z4MEPEvaq4hjONyiOPTlWvJ5Bl5zGs80AlZvfEkXtNugVBa
	 PJaUPJLJFMv5ufM/zzrzJ4VyuF9fvQGfayrHyZI0GK9hSqYrnMK9ghNtigy1CLb1Yo
	 xMRu4tMO8BuFiReJ76NQjVFVzWkmZqAgfJL1Z7dYZUeDJvCfJtsYVNsrbErh24qA3C
	 j99dpIIOyElig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E3AC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508105334.12939.7875368226962200607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed847d1543bc1ee23652b40fcf8c978f08cbcea54eb11960168fb720667428c9
Date: Thu, 06 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665081053
