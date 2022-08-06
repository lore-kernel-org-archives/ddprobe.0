Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592DB7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659786052;
	h=To:Subject:From:Message-Id:Date;
	bh=g40koERGYMPiBp33J/LbxnHN7FzDLPPGxOheo9/9XzY=;
	b=Ybd5F2YuWufBWlp4xiLJy7FBgqQP/syPg686l9txqmmm3rV8x2pPtvTdXOYlP2yh
	iSnr16ywpWYj67GuSCsko0rU29u0M3RUP4uf9eR28m/0HNCQU2I0I6BesnFRArGAsS9
	mGZ9X5WGwm0jru7EkPBUJIfyA57dDL5mg2vTa2XY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659786052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g40koERGYMPiBp33J/LbxnHN7FzDLPPGxOheo9/9XzY=;
	b=V6aXg8XEpKy2c+AWsK6rSlyMtCapOWcfSkl1MkamNpr7WFhXuI93p23RikvurPv8
	pYW0wQNcwEjULvoznRtXJITGToPLRsYMBtRgfhwhjIEWvo3MlpGPv+l3KnOO8+ijJPX
	x3O79o/pXWcjzneUg9DzUNiDlRvea286NSQeBy3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272f54405-5f310637-dbbf-41fa-af98-0201eb975f92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b41a575dd5676f341a0a0c614d1e2e1c5f251502cc5fdb30728a128b5927b74
Date: Sat, 6 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659786052
