Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB14C78
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 19:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655494859;
	h=To:Subject:From:Message-Id:Date;
	bh=C/cPzwYhQ82NIdnrjzu84keJUAVntz7ZULhh/a8uI9k=;
	b=DlJI2M4O1PrlU1aCZpsPmy7TJUxGbSZWb0GK+1xtr7cAftWv+aeAAx7ybcvNlz5a
	WQzvXeXex5eEykGjgfbIJOrF7zJ8plHKDfZtRZO37CZyuRTEHDF8jKxAnQEDQJWW9Rw
	2Q/uKpsXcdDrv4A0J7S7hfzD0sbyEXt2jzX7h1h4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655494859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/cPzwYhQ82NIdnrjzu84keJUAVntz7ZULhh/a8uI9k=;
	b=BAfucbJHwh/+HeHDAHRww9iFHZn84pB4mHKgnXw0AkXcJ42cFan9FA8Bi6CysYXW
	8oD3kukybfMmdyrdbCV94AgXTd9KTs6kYfK4cNWlA7MARmYfRDYwjAzU6Otf1ABwcds
	AMIwCHwK11G6OXV1QHaL+QpOMZFWycjms7TGZ0kI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181732ed9eb-8b7ded38-250a-4824-9fbd-2d1b046bd758-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a27d903d0c0feb0dcc1799bb7d2fb0326e3db63dd98101f5dd995f59952e4117
Date: Fri, 17 Jun 2022 19:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655494859
