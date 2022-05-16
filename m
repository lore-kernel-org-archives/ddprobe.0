Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E91CA2A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 02:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652667059;
	h=To:Subject:From:Message-Id:Date;
	bh=gOreJLq429icSYtRVutOdWWrjOowmOOhMtoU5RAHgSo=;
	b=O+DUU5C93es4jnOEt9Kc0tmGkMQFqqkF7DXMdfxwRQM2yyaJpqNhXJyDxqUaPKCB
	Fw5HaQ9aKqfiiSn3cSWlEC7gnKCrYgywy2aulAknD27W415xFkFHaaIGav8DUmfe8Q5
	THLPs5ZMHOXYTkWMCJtBR0jQQ8CIXyBZb3/1e468=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652667059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gOreJLq429icSYtRVutOdWWrjOowmOOhMtoU5RAHgSo=;
	b=JhrlxezeccDB8ahkx39iZt4NZA+WNpN2qiTrpTWWjYcMbGCti5qZgAVZBHPiRv85
	ke41Ajm4YLLSGWr3cYBHo22Vga6RH17q0knTMKOBHlxQckxtVsgOJIRzj3sXtdbMwyy
	jTfCTagRe6+2g6s5y6Bzg/QvQsB2e5/F/CsttNFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180caa20c36-75074f8a-0381-4046-9262-ffd26d20b357-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76f58d82951ba34827e13e059bf848887cbc12d03a996d6130bf8ccb882480cc
Date: Mon, 16 May 2022 02:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652667059
