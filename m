Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E4015AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647575784;
	h=To:Subject:From:Message-Id:Date;
	bh=l21o664ei2HC0l0oqntAw6n0P4L4i4f1Bnk0BL5/OrU=;
	b=HDp2sg2zQOtjLjK7f49wgyxPx2tsyvSFTTcEx0CU+qrjpBqIYf0yc60CIczh5N9W
	urmOgTBXAYnIKfHPrtNab2OW0lnQb2iXdED7Q1QJDsAaoa2QrN6qTEqjUOuyM5Z2NSO
	Bx7BWP/FgCIxCe/O+E4KRwTbZoX6JdXSx9Y5vo3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647575784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l21o664ei2HC0l0oqntAw6n0P4L4i4f1Bnk0BL5/OrU=;
	b=gs/R7TXtBb9jlC8fXP6dxwkJspRdj/SamgwgijxOQrlAeBNnOTiPPBB6dznwoA+e
	CMoWku+yBpR61PpoTagGc5zLmvG3QAo+kgw72CWqWRYqna82IqHr/2qRRAq9/ikFxor
	aUlVo4h2yVKnk8fJKi5bgDqol4bz9YvfcFKylHkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b2b5d37-56050b33-f76c-4b14-9dc4-6d4d8e89c7f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ab0cd5a2d228ea8dba1dc23e31ae94e41939493b3d3f21981479b23f9b3997c
Date: Fri, 18 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647575784
