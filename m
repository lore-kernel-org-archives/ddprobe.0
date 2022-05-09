Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122AA7E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 12:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652100958;
	h=To:Subject:From:Message-Id:Date;
	bh=uR5JyWwiAwKvCCjOHPFRkHUIhNau4GOYtM0lOn2/5og=;
	b=mun9lTg2mbFAwgDMVA2oiw7shaQqz+apQoRlJVESVJy7XQZcVWQdO0tQHAQHRfhY
	H71oEUD/L/skndmw1L/hX48UwxtIyqTM8K6M5TtC2oLuw6hrEy+UAsoJcIXeMQQl/+5
	2sAzBePnpDfVUXI+2wWAyC4iXa2HRKAK/BdtQPOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652100958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uR5JyWwiAwKvCCjOHPFRkHUIhNau4GOYtM0lOn2/5og=;
	b=QNlzJI+b6+KfnFIcsxrhdW2MFir8tmpiV1i4o0xoOaEZJmC4aSvpPoh/3dhyk5z+
	mPdId+V62i1DQj0JssDmIHMh6Nkp0KUlzlZIjbIDggmGFUTUoiccLsvqje4r+oJte0w
	Uggwz+4ZZjs6wNVapbzlDJg1FRvrxIC2mVWLf6XY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8e40872-f1962864-4fa0-483b-9307-f79b1c6ffbe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01a4db82601e6fb0f884c86af8351bcf9bf7441d2c5867cc2f20dda363c57957
Date: Mon, 9 May 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652100958
