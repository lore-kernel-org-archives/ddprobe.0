Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7001867
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656739612;
	h=To:Subject:From:Message-Id:Date;
	bh=PMddhqkFU0fr3SBVzDxicHNAuJx7l09jH6KK/5okIRc=;
	b=gnJV1G3go2CG3J4rIYfD4X+HwTPZnA7pIxkwsHZcBqBOJwZjbMYspwFdeiB4xQke
	QtlYGDoIMc/mWhH+zbOBBkywB3iUXTh7MKNpsHuExGgfx0mmFfa8iQinITkL8ygWKA2
	anNzdTz9srALC4HEm45sWxv4VLOt30Jfz03AS7TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656739612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PMddhqkFU0fr3SBVzDxicHNAuJx7l09jH6KK/5okIRc=;
	b=kA7mrlQSK4Xvgy1LHsMg++HGmUA3C0Nd74yDU9TPPokx+v0h0IdPGx+I+N1ZaTJZ
	nxaojoC/ebb6lbr/euc8nNvaXEfrc8NRcr8sA18/cmyWXodloW0semGWwl//UrlkQGa
	lZ8nd+U3hPMw5QrtWGYulTCr56nobF0j0iO+4/AE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd60469b-f19e6486-feda-4548-8b52-f568a6293bd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 169b6e055eced979f2ba0e8f20587c54fd69ebc3571c61ba18f94a0bd766d894
Date: Sat, 2 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656739612
