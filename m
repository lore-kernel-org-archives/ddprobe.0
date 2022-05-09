Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6EA7B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 18:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652122798;
	h=To:Subject:From:Message-Id:Date;
	bh=NqPy7ixcyurGSlqfser3D1oNNoduL/ES/6mrsncQH1U=;
	b=BB/s0vS2R8OGWqDn4fBkUlAbj/6no3XFb3ZhdMzzZBMeIZHzqO3ykgKkvHn00QcU
	YQdQ0O10ZUzkowY9qMyrwZcb+M542rvUL0pFKOkRr2qSwUWyIE0tBq5ZSvd2PdGEOM5
	ML1EwLgiNTeKjrSQRInDwy5/WsVAD05VnjJ5HCbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652122798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NqPy7ixcyurGSlqfser3D1oNNoduL/ES/6mrsncQH1U=;
	b=H71twlJYP4gQyMi1BmrLV/GIF3nYbRCfUpydB1u6qefLYD0hnwVHH/btNLKKC985
	WGqy80Yzdlr0dFtFIkbBwaE2uq8wUO4pKC8MsvSbzIbmayknGWoVSIm6g80FRdVtyAl
	O/i4wJlFW1WG2257d/SdpOAj7BuPfMI0v0jC3Q/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa3148ea-708c6969-8176-4855-8c2c-8d2a0fe61796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c153ea4c3aececd43bdc813ad0acdbe01f6095ec5904385269286338c67fefad
Date: Mon, 9 May 2022 18:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652122798
