Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2982A7C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 11:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648553038;
	h=To:Subject:From:Message-Id:Date;
	bh=dXm4Ui3uMfrgplxfFIQJ5rs2APWs9zMaFfGq9jvefUM=;
	b=TLO+mxO8iUmZ84IoRnEPXDcFuhlINirbUajB7gTek627QgqWLx5NDzcb7HbGIqvj
	UlGEQoloYdjI4cw3dRlnhUItuZeLDHZ4lp3ahGRUgN/lzNqOQThgYn5JbBQvPy7N2Ie
	q2+fMQUx7zPsSZQF2gD8oeJcKt7rg3gWm1dvwArA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648553038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXm4Ui3uMfrgplxfFIQJ5rs2APWs9zMaFfGq9jvefUM=;
	b=NlMIKyp/ldDEj6m38JWqLc4G+ZYjie+8xcsxQtiZKlHmq8r+VccaswyhgpwBHXHk
	v3eMB6Shb/GrXwJrPsKrB3JvSa2aBTWQOGRgO1/jwIYfK2h8cdhFquS97XFSmj768xT
	tpuRVQwja/0XlCH7m6aK4Mm3fsa+0mHQpGv2Gnbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd56b11af-202ab28d-0a65-40b5-a38b-eabc2e3dc79b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d45f87a80a4401590d8d926fc93113dc61ee2a379f7d5f1633e2481ac56872
Date: Tue, 29 Mar 2022 11:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648553038
