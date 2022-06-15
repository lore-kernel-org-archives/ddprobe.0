Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6483D99
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 20:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655325659;
	h=To:Subject:From:Message-Id:Date;
	bh=CPBsNT81Zcl4eTGu8uegxyWmPTYftBllY+N6w/j7oIg=;
	b=Dxpw+P+pYuJ0Vgm/8xyPC8OuhDvGzw3yfRENKHEmOgcGDzqT/0uAR6yUECFdsp6s
	u1Qew/yu5HgS0Ela/hUryCy2pwjUax0qge4VXDu0jPvZfVKeCkUg5XCEP6BMSC3PX2L
	4D+9NzXwF6Y1BCre7oWboz+OBVGq/59/Xadw4vR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655325659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CPBsNT81Zcl4eTGu8uegxyWmPTYftBllY+N6w/j7oIg=;
	b=IkUxqSba32g3RH1PdjG5kVe6t30EB0x7PQJ69xESOWPm8rh2Ap5hDRxHP5Aj/5Zk
	oUe4mp8IjcjpiYOOCiwM01h8PNWvmV22DlViqSTjjFxMYKsBB6GPe/gH9GFG8WmAczD
	JRlJX1dC1cjxlnMzDzfa/sGtlPPeP7IG5vTgY3HY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816919106a-98f39c1b-c58c-4a25-b1cc-8b8eae8d0f14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10be30bdb74968661f761ad4a922d284ef7893ecc1cac10a4dbde15a13edc392
Date: Wed, 15 Jun 2022 20:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655325659
