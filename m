Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1207B7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656503812;
	h=To:Subject:From:Message-Id:Date;
	bh=MQqqkNku/iaJbDzbVlbQOgbOT+tWNIyi5fihAPOqFPo=;
	b=j8EHRRtrJsQgq3g8JqfDyXb+KJ3aUeGavLNohyyyMeVAeE17nmgGnQaXAfjwNX28
	bGD4SaRYMkVEv8wJradk/vCa67QN1qai9P0e/aixf3KkJIWNC9Q6WV73BJbJ9lUA4eG
	g0oXwaIyedOwgPWhCGqjyv1KVXk/s3fRdgTvBfGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656503812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MQqqkNku/iaJbDzbVlbQOgbOT+tWNIyi5fihAPOqFPo=;
	b=Pf+bxUree8J3tylK8NT9KYoX5P+2Qk8rY6iRcyCOycfZqF4yr/oRy+a1H9cBYYNr
	TU+cFSLYNoxqQVgwL8m2fql1kk93zyHZruM6cBLWuoWD7liXlHt90poBbsQKrfTgPqS
	jvfm00t/D2huf4Roy0aO9T8HPijWgyqYoJ/6Rf4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af5240ad-b1c8a0ea-5a24-4898-8bd2-7af3a8cc5557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec542c8c7778a947e1f9ef4232724cdc53f256d2dab498313c34deb110b88f59
Date: Wed, 29 Jun 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656503812
