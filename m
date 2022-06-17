Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE094C95
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 23:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655507939;
	h=To:Subject:From:Message-Id:Date;
	bh=5l926cSkDvVfrT79GxPlJTaOL6BbASPw0/6jxmLX954=;
	b=hzm7YrmpBmnFO26qDi3cKeuh6GtNfdTV3dQe6xbvVEgl03kGW4ttlYVBy+vGgnxB
	eiywQ2IuKutE3XL0thP5E+79piUgADwlNoupNxx+SKzoqVoV7NkZKLDZOzp3MLZFUJW
	iIlXQHUW76WdfanEEFcXZs+BoM7W7FiYUWD+Me3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655507939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5l926cSkDvVfrT79GxPlJTaOL6BbASPw0/6jxmLX954=;
	b=aqxhSckdR2kd0Kwj9gQGRZOlb07PBmk+2KDsmrhLrkiJEVcz0HAkaEPMOwsK0PKb
	+f8Wx4IXlKYqIlDO1rMWSaBFh6H6L+IOUNKXWyOWAQ+QGbtaJnO7wIBPMbWCVVaGmH9
	KHEybrefj72fY1yb4+UQuSE5zRj1Gm8lSLiavmQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173f66fea-9c6622fc-2491-421a-9363-74d6024d8bf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e64d657334b80e0c3b40ff6f953b49d8a8b5be444b240e611e65c3afcd5ff0e
Date: Fri, 17 Jun 2022 23:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655507939
