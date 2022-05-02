Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA2915A7
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 04:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651466638;
	h=To:Subject:From:Message-Id:Date;
	bh=MSxu3WoxYs8JeHeQty7fAfXkliahPtS22gOCyJ0Not0=;
	b=RoV1P4u4fYGHc7ffm0qaMNBrXAdhrmyoKAfg+klBfvWScasoi3NwIPuOIojMtc1h
	sgD+AUfpN/oMotpctZRrm3u9ZEeyZTI1VpwuLOh0dMYpkefTX0mTicB+97W4P4r085N
	BKJ71tN1JhZSYDfMRIwOBDvxpQ6OMt9AO0BWBZEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651466638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MSxu3WoxYs8JeHeQty7fAfXkliahPtS22gOCyJ0Not0=;
	b=P54YmMYXayNlCqrIoLmgSc8DSDzDXasZhdbBQ7h5RVomXUW6495N33XxjH/SQveo
	P685ibbGoEgJfAXIIv3rUdXLM400n4nFlT7MssYGOlvfwpqD3uVzN64swqYE8y98vsT
	sj75s9oix/oVTpyK0ev0XY3tfFU7aTC4JgGPUJsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083151423-9e103ea1-8561-4535-974c-4e6569d54b13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 956f9ed11eb1f69d120a3e4c4c3ddf8ddc97c7bb74784f21677222a953cadef5
Date: Mon, 2 May 2022 04:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651466638
