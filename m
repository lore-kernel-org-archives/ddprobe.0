Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC33D7A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 07:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649057458;
	h=To:Subject:From:Message-Id:Date;
	bh=4N+r6bBxyEZ/yeRGdXE3MAP32KWSmfi8R9sfrtlhQXc=;
	b=YG1rMACGPJFRzoFRIs88Ehw6k8hFanVX7JneCN64lhMYgNdw0PICw1NdPyXFTp1o
	ykw/ESMIRsJuJ4b82o9awrArYAgwdtcASurJ0Z7PNqnljdvq93b3C2vmzVapaqNWCza
	g89S19iZP6iZq9qa+3WpgNM1OrHjs4X9DZdGBt6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649057458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4N+r6bBxyEZ/yeRGdXE3MAP32KWSmfi8R9sfrtlhQXc=;
	b=CHAAgMwd2n3ENj96c8Gfc9XIYdk8qyInTbHU0k1osPQnV7j8xcjGbnoIh6YK7xKT
	ZaIqlI9EauZy7OjHaiUy5uOsk3CR0Kn1aamHKA0zxcU8EsE/ZZhRgZDSVrhuX7koGf0
	8sNtM9wbwbf0WCKsGqkC4lAvHPaJLx+VP+/HEPbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff37be857-85cb5540-ea1e-4adf-a4c6-fc72a03073fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab257736e29276689cf557472d05ebe980b0f6d01b7624332a2058d1320e80d3
Date: Mon, 4 Apr 2022 07:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649057458
