Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5983D4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660060852;
	h=To:Subject:From:Message-Id:Date;
	bh=48kKqeCFVf+1RJsTn8EAavm23lVQ1rHLks9hQVYyhmY=;
	b=jIyk7zfB/YoqOgwf6QiEdA2Ugp+Luyf6/2DnL2+BD96Kz0mXa6P31Rx8J9ctJ7zs
	uKHj2Fykr3DNOr1sykWxWotExgPbeufus6zj8lwqKFLllWGDAhQ6r57+rqBykT5p1tx
	a7xQa3mgqLhgJhGmiR844gH8bYm7R3kgOdA8jU3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660060852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=48kKqeCFVf+1RJsTn8EAavm23lVQ1rHLks9hQVYyhmY=;
	b=BxeScYltS9ZMj+XBIRFEHwZXm20gES7MM9d6u39EGtp8kDlDhgPARQte4ExJW1tv
	t8S5vNd0br+EVs9hh3dRncXVSh9XmOmP925vdI2yHeaA+eAHiEWklkKKp1LVzQcJLT6
	LJmgE06ZtblGQhxb1+z33BCOkpmdvClmhuj3eosc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283566161-c74e563f-d380-4fb4-b0c0-35bab7e7734a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12ed97ec9dae265af4252df9867688f85d87d81c40007727f992772597f15ab3
Date: Tue, 9 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660060852
