Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0736B7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656591412;
	h=To:Subject:From:Message-Id:Date;
	bh=dYo7JyPO0fyiqpgsWo3JVixNEtCWnHYGJ2Fm+QPA9qA=;
	b=DB+3m0GwiSpg6Zg3yB31btvjiWIAy/azo7Z6906KW6CCQ8h/IPXZ9hdeauY40rXx
	KBEHQrH3cKpOvDE04gHfrNDrsy05ako44eXOc6g1klPiR043TpGO+y/wKZ1X4ePZLqH
	eJpseRAFJWSugELAdu0yh4yXO7/W9e7NAFh/Ey5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656591412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYo7JyPO0fyiqpgsWo3JVixNEtCWnHYGJ2Fm+QPA9qA=;
	b=Zq+K19KhRIoknkph8l7nCJ0LiJFEePfrmOmlBUYr2U0/m5IHM97wGZ3VG2jjfjeE
	UATEVZsHj5zvcVttR2KsDzIzAa7WvD87SVDn5F3oTIW6bUIhoafEGfmnoWkzBFqFw2g
	nXMeSGX53x46XBXf/WobrwXkw1DfG9bP748z0uCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b48aec5d-5cce0252-d314-4008-b105-ea74a4dcc60d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 473eddba1c24bc262d92202dbade27d72e22d4f0f277cdfeb29ac097a758b7af
Date: Thu, 30 Jun 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656591412
