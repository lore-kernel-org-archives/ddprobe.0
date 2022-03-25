Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CF823AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 06:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648190938;
	h=To:Subject:From:Message-Id:Date;
	bh=QxTGZxcmQ3KpwRvTl1K0zy4+WAZ6oZvmqspC7dBhR8A=;
	b=ZPUl2TCrcTVE7NAh4ZdbPXvNGTSD5EHGrRTvB9YtUTYM5iL821pf2Lv0dJ4O6QYD
	QhXC441XWpvImmTGIgkTxFA1NiGXwahKX0hRdRZxakxIAiyf5JZWBDesjk3lgXr7+Gc
	JA+z/kor/JA/OLuxWpmy4tnavM2kWlmg4xWH6NWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648190938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QxTGZxcmQ3KpwRvTl1K0zy4+WAZ6oZvmqspC7dBhR8A=;
	b=kJbEsG9IMJfOGnTtM1r/cgOzBZEDRh9eRYcSmBcn8Hn7BX/J2bTn1lFQcYDX1kKu
	+lqiTMRB4HC3N6oNGWIoFGQxM3B67SaMTVp4P4klcQV3BPz7rfcnWnql4uCcT3igEuv
	yh9r+b2FiE8cnTTKwRco661EbJKx1jZi/kOnEkcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbfd5dca3-e92d2565-40de-479a-8c2a-54431222675e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 230c93ebddc0fe57af9b1b245e36281f2956ee2ac6da1902d27ce5d1395136e3
Date: Fri, 25 Mar 2022 06:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648190938
