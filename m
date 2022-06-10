Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08127C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654875059;
	h=To:Subject:From:Message-Id:Date;
	bh=RFFlJ0dDagdE6244ggtDBFGNIBgQiwZHY+kRFCPMggU=;
	b=B1FxFyozAsq0vScf1gLnxDubNPaTCifTwSkftCEqyeu8DHYo9jPBdoDKmeQ1R9vF
	qGrSORneEWjcQkgIPndx6ZTEE68XwKOB+dw30KeE8RFk1DCdOOjitAMF2ogFc0PQ7hV
	c8Otp865SypkWqEmj+yBuw9hY29gn6RSXM3L9B1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654875059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RFFlJ0dDagdE6244ggtDBFGNIBgQiwZHY+kRFCPMggU=;
	b=T0nrRgPJtB9SGLhRztDdgQOyK/l7n0aDUAT1fCzSMxK89uPcuFEgye4gG3jAmGaR
	MrJVB2o6f+B2Ibws0vckp6Noo7CzOw4TzsdEGpNeEdvE/NLeeLWpRdjKBnPOIhUvwwq
	LRjXmly/Yo3iQNt+p0RGypl9YCVO1w1gc6v1GLqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e3d744b-fbadbb16-bc1a-439f-a5a1-fb384246abd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 253ec55dac9da84c9cbe9d33af04331f0dd634bec72ae5802a81b5562f4e53b1
Date: Fri, 10 Jun 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654875059
