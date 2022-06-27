Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CF92586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656323812;
	h=To:Subject:From:Message-Id:Date;
	bh=uSmRdAvFyJwDs6CYb90FBlfTD54Mo4ZEx+XT7h9kAmk=;
	b=JMrd0+8TMcrMreticAfuhEg0Fgyl7nzkNc0v9U9ZiRwODqV3BpqebK2sAV+lY1YU
	asPLtdzPiuqLgbPtEQ1JsR2BujkVhYIZAIcT8KL8VfQSWH/sctkIrlP3TIhkA5nZFPY
	/25vbtj5YokJF66Fqwhnp4KyUv65ES3MwI/bUaXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656323812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uSmRdAvFyJwDs6CYb90FBlfTD54Mo4ZEx+XT7h9kAmk=;
	b=QcWyYiP85ZJvdN732QVSfiT9RT8MPNKbT+5X2h5lMh5JLb6LmdIeyyiyxuBoVec+
	qjctXS4/qImcf1Yu2F6BoWHya9g1OOnMBp/b0HiYNRETKVcVOiqfH7Vr+7K1G8IeaAc
	QDSbXmZvWA+GLVeJ3o45FGq5Wb6XxZvL6CUcSDXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a497abbb-ab75b55e-d79d-4f96-a4a0-7c6804366bd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a651d99718e4a147636a96e79a26ff89045a6b3aaae4ec163de34bd2e0031787
Date: Mon, 27 Jun 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656323812
