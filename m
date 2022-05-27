Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F91A1FDC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 20:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653684419;
	h=To:Subject:From:Message-Id:Date;
	bh=Hp9qQNdbqQSakPneTRszHxg6Fvw//p2CEmPqYQv2rcg=;
	b=eVdn2y3io8I+eBGAOZA8BFfUUsham4D5JBSDUUW2MVSi9odQX8/o8g0gVrVB/xGD
	RDCUL+OdtDf9MIFBkXclzf+7g88yADo8xbif4gH/Llo+MDDiVwkMhDayWOkAHgLZKDQ
	xFxYCb9p96wwSX64nCAx0edZcaZUoES+POZi5NlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653684419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hp9qQNdbqQSakPneTRszHxg6Fvw//p2CEmPqYQv2rcg=;
	b=J/3JTAW8yQZahuGYVKY4+G3zmxIYsXap8FBZuhyvFaDGobY4kil2lkt16VLTqJp7
	EVpSsDvCD7QeBt7w/SiSiFqbfB2f7ElQ/1JjBTE3w3r5u1rVMS3oo/zoAxPE1/DCG0H
	DypR8p0fW7JiW5iAIbEPYmtO1Iabl1sfQQsVt1bc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810745baf0-88db3895-3358-4cf7-a93d-84ace7fc46fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d39fe81e332b7e641279462fdd4a5a05374e587994861664e8e43e5994577c
Date: Fri, 27 May 2022 20:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653684419
