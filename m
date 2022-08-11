Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1A933C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660230052;
	h=To:Subject:From:Message-Id:Date;
	bh=HqiulNiGmOiaPbUpa00oTKi2z59rx4REoRV2mtiJmDQ=;
	b=gua3O2Bx+cldbSvynaM7BIl5JO0AMZDFWiPVHcUItCVtqFxfEdwOLzSe7qCdG+xU
	3Hvl9zM+glVyzvJO2TFaqXwG9yshP/Q96OaDUpryaRemXeqEDccjp44dqXgp5C2eNA0
	zSOGq/uBe45r1qsmm6lBxGippX2xclTP9rcdNl10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660230052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HqiulNiGmOiaPbUpa00oTKi2z59rx4REoRV2mtiJmDQ=;
	b=e6MSF5Pe/HEpc4rv5aiOWiBpvh6wOxSf1ZAMt4jeDEupoH6mHWL7+J/2yrg/EE6Q
	OOylrnuncJBGBbgvoj27SPHpoiyv0dFbZoWs0FZT+Xs5GG0v74Uy/q6R2Z91E6sIbdU
	olT2DIEBcQdH10pZIQHkKUnFht1VaYnDA43T8DXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d6c2b04-6ea98ee7-5545-438b-ad7a-c881d5d6cbc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70d753e88380a9484e47ea39c3b3faf02f21b594645da55ab68abea26b3a2d3b
Date: Thu, 11 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660230052
