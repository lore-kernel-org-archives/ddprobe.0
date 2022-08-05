Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679A67C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659696652;
	h=To:Subject:From:Message-Id:Date;
	bh=oHDX0H4c0+lfuyuSkOgOsTVgtwjBg7HO9gkaSChVUVU=;
	b=gtk/3+lRGZqruox042qI2/taylhCRlDtS2RADQJjDid8UroE1EPxjo2oz9HUia+v
	vjQ0Y52VMgjIRpKrfUX4nnuyswgD4GjM/jD0RwAwheyyHiVF19o38DJUNTTUzs0PR0q
	phnxoCL/GAnSb4qiAoH528XUf6USc5FVTKCA0sJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659696652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oHDX0H4c0+lfuyuSkOgOsTVgtwjBg7HO9gkaSChVUVU=;
	b=jMiXnI4FogIytvsalMeG97FVK6A+VHBEAhUbanrSbqgguW1xX6dlMSD7bM2LgUIE
	oxDGSGXOhk/LOZNihl4vBKGCdKHDyryqlAH2fukutyGPIaxoQcBhWD+xsXRCwGJp9lP
	/7AW4SLT4B6d3P+UEXuwDGCfDI9WRIlxW2QWmvVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826da120f0-1a36ba49-e73b-4f6b-b2e2-a3a9f6eb2f13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ae5426fdc75b0131a0b648d20c33b53a9244269970fe07e6d1a2ca2556df56e
Date: Fri, 5 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659696652
