Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA8018D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 15:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653924119;
	h=To:Subject:From:Message-Id:Date;
	bh=pYmNDsYPtaKCI7TiE0WZRYT5qwvQQWwLTGwkgsnwsko=;
	b=jIFnuAoE1QYE82U9Lk3+QXImucJfSzhsCQsoOkg5ukudjRRFgyGXLjQ6vpuxBqQT
	XQb5DHZjCJZpEmWN/0cOxkYW7QwifsvOkOgyCraMwFO6u19ITB8D6nQR8FG1oRecjGt
	kCFvVxEAsZlEOX7Vnj58naOTn0lfd495v5N8lxgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653924119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pYmNDsYPtaKCI7TiE0WZRYT5qwvQQWwLTGwkgsnwsko=;
	b=XK+q4VyALYF/0grsvVJEM2DeVGzk1s2UDb4HuYBjIodvsPT6ESz03rifWlAf45YU
	TgA8wKe8sR97jxLhUoQ0dUdooBwM4AN0ILnJWhX1uS5G+oZK99LrXFwtsnDYl5H830c
	eI/zM60aF1ULocPKNAdTCNcw9eLM3DA2uA6vBa1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181158f4344-9f60bceb-1057-4930-b1ff-027a179f8d4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a61afd71723ec8ecf9b0515615ccf1fdac614f740c65f4cb3ad92a7f1e464da
Date: Mon, 30 May 2022 15:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653924119
