Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F651383
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656751612;
	h=To:Subject:From:Message-Id:Date;
	bh=Mw8fmW7R8I23xyDoYs4sFg9WxcAUUPCXIwYmXinW+sw=;
	b=OVTE0t98sJtp0xoZXIG3bgpITturjdercwcR6VAJQicFDmAwVQhrBKYVMYuEHE2A
	whcAYJu/bjnuVHyqz4PcGybjCn9XEOPWbVBr1+lopaRVg5qOqu8A7szLGR9zw+cXcNT
	DTUiJ/bMy/skMuBLCaPRWnb6DYmpFZRicnnFbceM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656751612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mw8fmW7R8I23xyDoYs4sFg9WxcAUUPCXIwYmXinW+sw=;
	b=ISYaSPm4amaM2I5caGp8CJnN1necs/RHG6akUlAPxpacrVeTZqE3PnlSxVAQ4G0t
	0Zi1qEVqYjmiSMJy2kEa62JxqJnrxlIbAIT9PxGFJuOpbMMUQL2P7W2GX9ksKHnmv52
	L/YsUymXhUwZQcXxpLaS0/K3TO4jD3Y4YNUu95sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be17621c-784f6642-7ccf-404b-bca1-2c877c9ea4b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 489115c7f2e9c59d3820a1e7cc58288b01c864f59bf89b4031c1d97ff906e612
Date: Sat, 2 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656751612
