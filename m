Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7927417CA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 03:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649216158;
	h=To:Subject:From:Message-Id:Date;
	bh=k/dm5UbOmq7XA1PqngTGj9El+v5zAL1C9cd13KLY8gQ=;
	b=TReRkV+ElwDR0k0/0JI2aMHRLCpgaVZPTaaawh9Onz8QGheoXk+W4wgBfntYzCJY
	nkodjG49D12vuCKOfUGJ57EOAx1E/B/oLXOLYohiOIbO9WM9mdOZVv8OPOsE5mjug6n
	wFv9KzgMCatYiOh9/OyWtWsCSrkhHgjfC3gBL4mI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649216158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k/dm5UbOmq7XA1PqngTGj9El+v5zAL1C9cd13KLY8gQ=;
	b=Z+HBa6vkr/vFaEFQ2Q1xQd9nhfwQOU86Q7mYLHVG4tZR4aecQ0eH2rMwALqoFZ9h
	g3N3Rwxayv/9OnsQuHgynyyLGcZgYU+QzqEi7VMkINpfJFL3/0isR5LwhGBvTPl5Pxm
	Nwb6Xa9U/pDko8vq5iya6heIlDw/ipU+U6dJJdik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffcf17a29-4ec1fe65-d5a3-42ae-bcda-a2f57422dd39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 242edc3600b0d9df074a13db4281362b45d2c0f087e60a60dc99e0bc7d998748
Date: Wed, 6 Apr 2022 03:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649216158
