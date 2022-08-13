Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603647EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660382452;
	h=To:Subject:From:Message-Id:Date;
	bh=QFG0P/u5gvaW8jZ90yiw/6oUW201TWIv98MrF0iBZoY=;
	b=dFed+j0k0gXDwnpSWgb0MJViB5qLJdJ0VX6cZ1+wZqAAW6weu7C+c1GX65u6RO1A
	WzYy0Y3j6bPpQDq6Te25ASpcSe1V1ficN9r58GgY7QVR0LbbqU6gB+iThtEa3NCtAYg
	d6G6O13QQlomR7vN5a313+66WBjsmLwRFZZ+IHJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660382452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QFG0P/u5gvaW8jZ90yiw/6oUW201TWIv98MrF0iBZoY=;
	b=CUif/AQ1vt0zOuQi3IJYrtm00tUevATLkBAvLa/gqJsSVNWgRnT4T8AClPMcaoAu
	TvIehOEO+ijeEwa0O7Fo6Q2N9rrX0jiPcOuMZ6fbsbEt4NGpqQeKufubp9/lOdiqs+U
	zxLJ3ieTLFeSbLl4BHuxhQ5F2zn1TiLCDfkrhD3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296819b2b-3dbd05a8-83d8-4f39-831e-d55e6c10aa34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0fdcaef8faca75c04a1ab64ad99f5ff84becab86e45b5c4bfb46ecd71fff362
Date: Sat, 13 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660382452
