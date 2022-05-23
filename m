Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A5736C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 04:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653280259;
	h=To:Subject:From:Message-Id:Date;
	bh=xT18c+kS8DWoFkJQYDLm3GAiUIaToNSkSxNqzaBm5gI=;
	b=O5dQN50lnXK+bKEIEH8Bjx0EVWMLhjRzTr0i9Pd+oAvVcgiXE4gyL5M56fc5lLnf
	PKClBcIgx+8fQtSftfGTwgZ+/YcfGoWJ/S+hHXW6G6QEiyb9oJo9z31F1DE9znaaDyW
	qEU6bdtPH73jDJwN2WE2w75QEtc7w8jOZ+61v1EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653280259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xT18c+kS8DWoFkJQYDLm3GAiUIaToNSkSxNqzaBm5gI=;
	b=QEeMLHA88LnagbbNO7EsKsw5oBQ36bKukMnrYUG5Jqe8x8Gpi+hz/6Uv4PzK+c18
	K4gEi1xuYuCfjPvvOaPP2yrTXaxfPg1oRTOnZFx9sWb5i0uq7JUtBTu/+enSZuSTSGs
	Uy64CkhMkQYwm9LrhHPjHm1XoW3/gtWVNEid5MBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef2ebce2-f2bbc81a-4463-4cf1-b682-ca3fd0998954-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e5f07eb17da413991ccccd09424ce73506cdda3d4d1a9ebf418c36cdec29a11
Date: Mon, 23 May 2022 04:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653280259
