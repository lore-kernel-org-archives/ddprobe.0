Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C41E15AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657678612;
	h=To:Subject:From:Message-Id:Date;
	bh=sWHbBCNPG/J+jqr5TgYz5lCpex9L7Ti6z3bpW8v1+Dc=;
	b=ghd+MHSXC3q9pdqDhqGcoG9k5LJisPIBHu0HKef00JS5FwiOXQei/SA+7y2034Oo
	5jcpFIjQb1EbRnXSQQDtonGq5sO1jjRf9z2OgN8CznvWp67x9ZZLkR08PgpmMoBWx1q
	eStpD6DYrntpGqZKRcBom2uuFGL6nEG9Y4bojPcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657678612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sWHbBCNPG/J+jqr5TgYz5lCpex9L7Ti6z3bpW8v1+Dc=;
	b=absgj9sMM6IeH2gelMMSFy5pPzLCzZDaaYqxI1rG55XmRseGCfL5Mm3GoqZi/emT
	lLSyWmWm/jJelp6tZczxRQhPHpxVfAS/iAD4WCWn06u5OfC3UyuIas2VIbInoN5fUO8
	lD9+31386zi4p9753QGq1VFLrOEA1xoggHAbZByk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f55847bc-443d03d2-6354-42c9-9d81-ff3bd25061f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc527fc7cc539e6bcdd8b1f5a27fb9f454250644e5a61b319cf66266a3062dc7
Date: Wed, 13 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657678612
