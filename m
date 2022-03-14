Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C9C6AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647294384;
	h=To:Subject:From:Message-Id:Date;
	bh=DDzloqYcqgyK0RHOlYTlBF5t2Pmn8uDVhdRaqQxzLlM=;
	b=WGskU+VlasUGGoHsk3R5hwB9ghizQw5WsgV+cMy7NorFsLEbfYYAK2/W2DXkWEGT
	YI5WQdxop7zurndcenHiM+VxN7rYiX9elqLiq+BIDyIT3Y1cY+Ee9d/8N1/dbLM9jyn
	kBRyO5ZwyP7JwyqLhitdlnE/V0lt8e+lptXlrpig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647294384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DDzloqYcqgyK0RHOlYTlBF5t2Pmn8uDVhdRaqQxzLlM=;
	b=kPhBAm2oZDCdYDeLLajROoXV8PyHMVOyI7OJHhvT79K/CWYRJrCXRc8lkAnfcjZg
	Pix0Q6S7bn19W/Oj3VUZ8e7q9kDQk6DpVAVAdapjJOlJ1YYdhaZuFRDtNwfQkpLKucb
	OVv3FNolwaTy37npGTLHlox2zMxBtODiXeu12k6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a658ac4-9fac6c4a-7c8f-4f66-a241-c4f102de4461-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5a0cef86fbb514601059d7c3b87398c64bce69da565252953b70daf0fa0e327
Date: Mon, 14 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647294384
