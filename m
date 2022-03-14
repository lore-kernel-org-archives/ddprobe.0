Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB2E7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647275785;
	h=To:Subject:From:Message-Id:Date;
	bh=Uq6Vhy9f+J3D/yuFdIgrR88oYBWsRhxi6t2ZB0zK9I4=;
	b=V2aOBplsNcDmX7UA6DyQFoi6JfOmvi+Ld17l9NtHTeZ8YZkJ2NRtRsdDxIdOi51h
	dlKSj2UIdkj8+a0OXiXL96YX2McXOw/jqUtJcQlXZ/fIqwJc+oRiwv64ISIsmiZe2ov
	DHxNCa+CJDxrf1ZJpUUQuGgwAzPNaTb8N/h0NdvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647275785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uq6Vhy9f+J3D/yuFdIgrR88oYBWsRhxi6t2ZB0zK9I4=;
	b=Xq03+2VvxTONCfKDV03gJLbcdjH3VIzcWjZ62goxP12UXeEvhydMb90v/gD44hlZ
	8a76wyoSMXQhcacgnzG1Dig5/sdbzo85GZvXZbJEoeRahyIFuLvyGv1I8c1uzSDkWZc
	bT+YDl90GBapX+T9Cpn+YwEiPuKX0XQq/ve1hcPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8949ba7c-d4362bca-6480-4923-9c2a-689616de286f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86b7bb2479967fdf9be3f89becc05f9cb848f5193209eccfb3deaefc23dd96c3
Date: Mon, 14 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647275784
