Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDE22F53
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 13:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655474099;
	h=To:Subject:From:Message-Id:Date;
	bh=BiC7XaX7LhMBCFq0WCEa2rHESqJAKZ0i6DUNOYH14xA=;
	b=GOlIohd1FUHkGnPkg+09SOx2RtQwYkVFhN5A1SAwuRszAMLhnzCzHOe4lRQVbHFx
	QUS3HfP73oirRxJEmdaRcjDjAbSwS6bRZkIgeZzoTkIT4NmOdirLsvNsl1YC6vJgSFs
	pzjHq7N72IVZT6yZ1sHP3XE5i8176r4iSf2d8V10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655474099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BiC7XaX7LhMBCFq0WCEa2rHESqJAKZ0i6DUNOYH14xA=;
	b=guCQhq9NDgkth+BxzyHkbBgkuasCBTscclzKTo1RizJR1V4OYAE71nFDZgSEYXBM
	0Ed8CoUg2WeyFr8DLOt/mfEZvsS2hYehcMrzZ6mzkPoMw8Z6pMNNyyp+itc29Av3tNy
	c7rF2cMwVoGdOZj9hLHJME2dsRH7IFb/vtTiIzqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171f21454-19d5774e-02a2-42d7-a5fe-78f937e2e902-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9d3d9af282e8224dced5fb5af8b2f003c77af55e881f346c36d758218414e69
Date: Fri, 17 Jun 2022 13:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655474099
