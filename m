Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340287B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656461212;
	h=To:Subject:From:Message-Id:Date;
	bh=Jb8pBgWNc1ISvoHuXknNNkb/FGUSgxqpqOsouTMNUKk=;
	b=Blqv0CFyNliCrd6h2c0NBJ3BvIj+XvJUGHKdcnL8Yv8iSCBKLt2jG2ySQaEk/DeA
	9V8qBKfagG38RGns3u7PvWhN1UfKgzOxKJveFBU1cJ5KzMC67bxtZBLGSgT4WMpaLHH
	QTMzksj9ZIyoEsuaxdZ9a3CMq4Ao8xKVSV9sOxtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656461212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jb8pBgWNc1ISvoHuXknNNkb/FGUSgxqpqOsouTMNUKk=;
	b=Hq8Gk5hLSTalMWdn0z6l728hjsra00GAEAb6s9KwXuVOUneI7bX9h9atZATIpmGD
	5U8HYEu4p9nJmODNYE7mqWQCM8eVqb4hP1uxmuFrwC7ibhPJ4wKbJA8lbGvx2pPZg+n
	KI/eab4jZPtMuOVpHtHxYUgxHgPALhA8paV+YmyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acc83a8b-308bd8c2-1605-4c7b-a66c-c2684bacddea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aa860de9f116518ae69f54a49770691a322695a99403eb49587fd00b6e4147e
Date: Wed, 29 Jun 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656461212
