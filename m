Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57146813
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 01:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652663459;
	h=To:Subject:From:Message-Id:Date;
	bh=ZdgkYkjLEwBrSlYJgo8mDX9E5LBMZoJlW4ZAyr1BtKg=;
	b=M0WD08Wp/jy6jd23PLfp27bw0NVrUCxtg6lEsKlJ8HUXANBlLxjijYIA9P6U6fKe
	cqDGH4eVLIioW/lSl+0EjObrH+X67Vm/9ljYFda54LkgS1MbkEIcbOamLihyXckeEu1
	UnS0XqsdlUtCBYcgw51n9rLeYivIIk9VuLDveVrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652663459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZdgkYkjLEwBrSlYJgo8mDX9E5LBMZoJlW4ZAyr1BtKg=;
	b=geSspzq8h3cbam8yApmKj3nNZdnVt06O2I46YOpx26giCRJUBEWwrHuy94+9AkqB
	kna5lqVvA+GvjIBbe5I4JbL01h2SOAqf88Us2HpSg6pt3K2oNJknuiLYGLLLeHJ8nOl
	cM/IIbU3/E3mZDthskXB4iGBJXMem7G+EoBSY5qI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca6b1e2b-c363f0e9-af79-45fd-848a-e44e3b9b59c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6cd5f684a083f1c23cca2685330f0a80b6bee93fca1c7bc67cd876cd7607daf
Date: Mon, 16 May 2022 01:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652663459
