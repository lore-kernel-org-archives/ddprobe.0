Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786842917
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 01:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648257958;
	h=To:Subject:From:Message-Id:Date;
	bh=ykBRKeMQM75avfUhPTOV771K3qNBpkwqXIJrR6kiYqA=;
	b=TCeOmxyvsDqz1cDqTU8nHWy+TfGf7uDOMBJII6KDpE9BgH+mrVOlV9EP+hK1VjOm
	T/PcUNUWWtm6LW1x/0/EM715/TZPTRa/V/b5Ey6GrR4kafTxn70QgQbgCb4b2s8yixt
	KCOkubgY6njg2cmR9ZJNW/qWq8lemhn1pYNqqm5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648257958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ykBRKeMQM75avfUhPTOV771K3qNBpkwqXIJrR6kiYqA=;
	b=QG7tmQYnvQIiO6B58lzTJm+/NfJctecTjR8KnLlDulztBTXsqSbp8yU3wLXT/31Q
	icpL8I0FnQV/h3jgIlc+RFX69NjSqBximBrPCM+OaKu8ucm7okARBLKs1diNs2g8vfI
	i9OQ2Gpk+bj5uE92rPaUK+XtX1lwnFPU9x5yVZOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc3d4818d-d9ace471-40b5-4c3b-bfd4-f756199d1f80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ddf23ebf958be4716a55d591bf1722993fff8344c1e399335c21d4322a7eed8
Date: Sat, 26 Mar 2022 01:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648257958
