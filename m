Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1493D28F0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657613212;
	h=To:Subject:From:Message-Id:Date;
	bh=4pH5uY5jXs3FOMtlFCp7ADVMDcbiIN56tz+sEs/Txlw=;
	b=d+FwqdxDdP22xaGtXC83DzXMrVDBqE4jAFlovOYWRP1vUzy6/9AkqgJn7sZpxsMb
	51qCAwX5Geu8WrMjtbIcX9QQWwSGiSW6vArIUGGJ0LeSeThNAKLnmbExg0rBTrMN3fr
	f/u9uDfC6cQRGxHnzJD7DwpqBy0V9BtPTQ546/u8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657613212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4pH5uY5jXs3FOMtlFCp7ADVMDcbiIN56tz+sEs/Txlw=;
	b=dmDsyyZ2KHxyF/TZar75ckeXOlogYetBTZwg669fXSG1xlNgiOJqC6g2TrkGqdKJ
	Ie6qz7EgfYiBn+ieisk2a8FL00+A3s7WoqW8wxlc6rATwPNCzJSmN8PHaSnEL0w+bHy
	DOBXZj3WkZPD8L/OlDuG2xx/1Y/CJy+bS+f8AJMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1725a8d-d5be5732-a2b8-455c-ad73-7da560c4223a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f0bddbe1d130c50b85d8a877869f8e8d6c9f8f42b406e293b77220402984a24
Date: Tue, 12 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657613212
