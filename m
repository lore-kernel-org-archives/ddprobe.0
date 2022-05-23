Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A193D79
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 23:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653348659;
	h=To:Subject:From:Message-Id:Date;
	bh=bkCu0YYHN/ifaoHS1KplsCvaHvThJt4s53S46tyslew=;
	b=Dd57Vh3zWOC+R02UM+q4//NJD3AK/xjySQijJRoB/y7BYc/WT5AS2LiHntlzyY+V
	84rntsTygW3ZFUpKTtztANPqQXJOSH13+s2rhoD3KV+x2qoYKXJWQ+mXaKLJAnXEJ2/
	MzA7Qn0v2OaT8O1toGgXj0PbRvbO3WPUvk8IJi4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653348659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bkCu0YYHN/ifaoHS1KplsCvaHvThJt4s53S46tyslew=;
	b=C70bFw992u10XFucVOaCdUBbI0fJqhacX5qRwDW/5M3ljTvSPCSHDrQm5FZFqY+Q
	Rr6rTLxdiiXMG6M7EF4K6WQ/XJdMJIie/WHlvXclew3okIYASltff/+l596BUbmbqCl
	TGgzOxBEIEWja166pu8aPwTmatWCtHum9YEE57ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3427025-4a9d336f-97f1-4bcd-8e1f-04e6be05bb36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cab31dfd850311b71bff2fe7f170ae198b317decc096caceb6455b44afe2f6fc
Date: Mon, 23 May 2022 23:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653348659
