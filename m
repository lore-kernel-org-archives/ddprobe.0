Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C562BA23
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647216085;
	h=To:Subject:From:Message-Id:Date;
	bh=cZn/UIK/d9I5+sBYpua0GxUgdsZC4DHYi+Af3vhkZf8=;
	b=IPfD6SHY9pfWoPEnlZFYi5xLoKNELZRd9K1Wod1Sm06sdVzz0VBQY9HQUoJWuPSI
	XC6U9gDb8SnKv4/95zU637qvK5tTp2RTQ7wbE52InQPPoSASsx0DIjitlMcH+gTNU1l
	64GiyjGiVT5ary2VtS0GDs2JGGL28EgUeJlMtIG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647216085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cZn/UIK/d9I5+sBYpua0GxUgdsZC4DHYi+Af3vhkZf8=;
	b=bQDnD5NE9LBLoD2Q9stqxdu6F3eOdEQWrDAfw8tuTZ1NZq5+w/mjnx4aSJnYAVnu
	Oia0HLNLT11QwECIj47q+Bef8+Xi6XjOpO5BICtwu2z+gyZ2YzbIoFHhdAjmaRxI5Kb
	A9sQsQwX/xaAZIAJ7wWL1xqHvHHFFxUBskGY2dfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85bac730-c66e499c-567b-4fcb-b672-55c45c98d718-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63bb0805f976af98105c1e03d2440ff38dcdc87d0f9de15eaf4a361028ae169c
Date: Mon, 14 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647216084
