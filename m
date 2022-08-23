Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B867B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661248252;
	h=To:Subject:From:Message-Id:Date;
	bh=YWR5TFxMGYHU1/1ZLs7afxlZBBrACd36lenH6vcLhGk=;
	b=kA9u6nhVbJ+1Omyj+ODJ27ppkg/ZxzJne1ge+IrOhLxFA0ZjRnoQfdmAcon06ZlE
	+l+l3I4HOyWQ8BdzKIJbNZQs7Zq7/Itl/W9605bmkLD6HQEn68nBCQmV4vTzkSeuBWq
	AyerhSwT6y6J1p9DuNYVXWOxJwEL6jehgsR7Jghs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661248252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YWR5TFxMGYHU1/1ZLs7afxlZBBrACd36lenH6vcLhGk=;
	b=EbFdJOI+RVlvv1tlf1NPBsbGnKpDcYkcy7Bo7LtPlgnFeGJgeSP3Z/f6TPwavDkR
	ord69Uex8brnqauKAoiHa4mJz+pP3XfqwlLsERMqtE0bia8XBFDZ8z+2iBxq7eYKr3Z
	TU7NU/EgQuW4ZSSkXwrtvy4ZI16SH4NDrsswE3S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca1caadc-4cd44a83-1eef-4a8c-b22a-d8bf84779af3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0b3dd96377e5c73d5141eb2afbd2275309680b6f19e54df2292673c7dc832cd
Date: Tue, 23 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661248252
