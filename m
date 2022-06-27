Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E532586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656321412;
	h=To:Subject:From:Message-Id:Date;
	bh=ihMKWe9BpKeQo2jnfg+j8w48gQcjzZElkyPFo7mnvA0=;
	b=QFFggAy/5yX84gnVKDuiBC0hvkR/vtLduGd88gX+5ejNEUZLcHRVcK+P3Xmrx6V6
	v1xLU5KAZHPzYVbMDoOIIqLyd63h5x9nv1qw0qpC2RnKnkXcjSVXVa3HPeD7Q+y80h7
	OwGCImKKCW3w1gYlJ0bnxokL/VqJpTBw0OCKCO6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656321412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ihMKWe9BpKeQo2jnfg+j8w48gQcjzZElkyPFo7mnvA0=;
	b=gSssYNlR8TYHdFb4J3/p3sK+rZxvZrRohTQiYUmIBEVfHvE0KAGxZ2iVvx2u7t8S
	OKWb2Z8S9IooPeMJ6lWSi2WZ24K7BLML4DCyBue77jiad00dPdt5PzepgywD7q12OpZ
	KjOeLMmfD9BIYjfoDAxsEN72Kq75LetkmEBxrxac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4730c9a-93f6523c-ac79-4862-9879-07f82ad742ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd31db31e03f806d770bb5be6a015cff246a5e30b8e6bdd9e4afc4e7fc08e7e1
Date: Mon, 27 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656321412
