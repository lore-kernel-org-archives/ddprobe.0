Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DC184
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657802812;
	h=To:Subject:From:Message-Id:Date;
	bh=af6YmmJm4Jg6go20zvNb66BgDJ/zsyHdgVctK934Xi4=;
	b=AzqUh54rmlAgkVy09/UyeWQbYaSUpK+HTDBtLjg78kA7q5ZGdNhLQLpumDMua0Vq
	/oUwRFvPT9pvnBkM1f7KUTw4aj63AoiJO3Ljn3P3OOu7yS/om/g2sl5xWzjxBtjgDW+
	hflkkBqBX9fQTghFXYvk5N+JsRTwbW+IGIYmKG2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657802812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=af6YmmJm4Jg6go20zvNb66BgDJ/zsyHdgVctK934Xi4=;
	b=LYpagauEW3MzlpVN8SXoYG32jPJ8twewECYMFsXpCn5YLbpS2+MQ7608F7ehcKqh
	dz+KohzmCNtNlqQeRule/Kqt64Pi1ohyj2oDWLjm5XJBvZU/+zGzfIh1ekRkmyVMsMn
	rCOF9SdWOKwlPuWc+impH77F/XgJ84zRKHs1Jouw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fcbf6b8f-413c2c10-cd4f-40cf-9750-382007a4ca2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e3d0952874e7b992b144da14abd4a16d3ce2eb475935f13fadf136684e63927
Date: Thu, 14 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657802812
