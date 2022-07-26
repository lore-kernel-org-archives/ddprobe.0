Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D8C621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658805412;
	h=To:Subject:From:Message-Id:Date;
	bh=FyAY9TyFrjlqd8gFI/zZcV12wvTJRLWj/cc1zsgKuuM=;
	b=SLeql4ieECuvxCewIkM9IQOo/nlMFDvt0DF3tgEjn4N4pQs+AVnzLUAjLJy2wy7B
	4JsBfzexe3YHhcJdK19Fluf8rfIubGBaXFuB/nCx5paY1EWEAW37scfrWER9Hy0GW4z
	rvO8NM8chlqs2hGtDLqAem7XH0Wor679fE9l44dk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658805412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FyAY9TyFrjlqd8gFI/zZcV12wvTJRLWj/cc1zsgKuuM=;
	b=EzO/3OioIo1hBm+mpzJFfOeCwCs+agddRKVqAlLhQ1T5bgJNzwjqkgRlBo9rIM/F
	2SO0nrhCViYTOGUIWm2siPAVBSO3my1m9wY1kJOYbXNJaceOqZ6YiLgZ4Ek6VbKs8dD
	EgzFfyIQtx/D41CNViubOly3uKclSQLXsUeHFB9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823881e1af-129a8011-2828-40f2-acda-016749c928d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dcedd11feb971c0da65da1a18f59e57995c75ddb147cf93dce43ecf9e32eb17
Date: Tue, 26 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658805412
