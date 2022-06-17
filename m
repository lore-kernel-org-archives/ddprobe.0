Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4934C78
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 19:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655494199;
	h=To:Subject:From:Message-Id:Date;
	bh=jr33VXSsuhGqVlvKHBToeC5Q4lDErBunGE8OUtsAaXk=;
	b=TE1ligEt0+3wBmuL21HsYCg3p456/hZenBq9quYGf+AkVbCOb3RDPcGLk9yhIEjC
	3s8If8BobM/8cV1UNgJBSKJ6kNv5hHMHWzW2ooSGHfvYWKOZp6yrh7JWqF6ALG/DM+q
	L91vWhQmwmfQ75fWlzu1o91J1AUzcRylfJSRYVRU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655494199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jr33VXSsuhGqVlvKHBToeC5Q4lDErBunGE8OUtsAaXk=;
	b=HxaLUy9TgJ3dKOhxOkD1Q4353ZriRbCVUQ2P8EUcT1EPx7ooJ4t7x6AfGBFFUl7r
	gB1aG4ilMvJ52QWvYPVhgf2JTbVYwe7AIc0PLSOw0hnAaD5jvIki1N/qjJMy/5tJuJh
	k4WpKVU8XtEyneHWQPzvyUaNYaDU2DR5FDTZLxQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817324c7c7-5639ac34-05a5-478c-96df-53fd01d04647-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d90594c7623f111c6304b4e681f6cb0ce09856c4e31328abd99e94a1c5df666f
Date: Fri, 17 Jun 2022 19:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655494199
