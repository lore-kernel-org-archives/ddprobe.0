Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A03B15A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 08:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654591439;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7TjPzj5bjXymtJDKZ5FgKrtRZpB3q2s7l0I8cOGkNA=;
	b=MtA8q2CnBEqAdH6Z4hHFTTVJhFLdIJQLlernqaXF4b2vNbajBnpJQKCEWF9cjNPb
	uONYZuCH/s/ZepqnKjWO6MyMXxemwrEkyv8U0S5ZtgyQI0XGpBXCvYymeWL20uzaR+m
	CQkEqU6wu5lK0dAYzZYKt+kdoX3Kqg92ySlfCaIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654591439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7TjPzj5bjXymtJDKZ5FgKrtRZpB3q2s7l0I8cOGkNA=;
	b=MpF6FpDz1K1xXde/qwLptpKHdWmpeqKkavNTrRNOGSdulejqRkGUWiA80sVMuoCO
	Gc09YSaP2IPNKAjF42ClO2nWuEZR6WFwx2wG5sHDlx+Hflb4AKETi05kOYRNAdD0A30
	XOpRKGWjKZeQkY7IPLeFAeIxWcDyuwrL7J6J+Rm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d55c1a8-ff423743-cb7b-450a-9fb1-b3b8ac335500-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad47ebae3134a4ec73b6b6ce70e8e1aac9975ae87bbbe04e63d0f4578f8dea8
Date: Tue, 7 Jun 2022 08:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654591439
