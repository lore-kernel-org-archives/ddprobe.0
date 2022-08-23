Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897EB7B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661247653;
	h=To:Subject:From:Message-Id:Date;
	bh=KAGnoYbhX8R4vn+mVLha1faEk7DBpclEjCgXn1vrNJE=;
	b=IXf3snFphyem6sQ1BP5pA42KqdKw09i5bSLgUk5fz4x9fcqGBXNBufz4qHMxHrQJ
	y4mQpnLCimtiRKQ+gVHQeefrAgUCucn21zfW0+4U0anAXfOQuABjc9CjcHD7ocDr/4v
	gsEwvGyiSygUHbPMTeml4CEYVqD++IVR2S8wmIsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661247653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KAGnoYbhX8R4vn+mVLha1faEk7DBpclEjCgXn1vrNJE=;
	b=DFxNMoOeLhREBKMgBuCRgRvANxhEQAU1MMDSoO0G8B2qu7q1lSHad78bHkikgfIY
	obnG/Ano8A82KOeACFwVSp8WWMcDW/2IeGQtFMXjJs7xCHtwbKuJuaZV+EWt4Jwjt/o
	STYGUoQ+KLOaWRU5q3uX26ZKjRRKW/ojIV55mX98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca138369-95f641b3-b27c-49b1-adaf-f186028c9ada-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbb5ebf193f80ed307ecf57a0d66492d3c54b3bedd801807d5418d54fef60d79
Date: Tue, 23 Aug 2022 09:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661247652
