Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FBF192
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 02:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653099119;
	h=To:Subject:From:Message-Id:Date;
	bh=zMAu0J7GDoDUSvV1+Rn9H5+ULWS8zrww7vJnMeVgQEA=;
	b=KPF4V0+Su0Ar8y90Tt7NeEKXCS9vcp/yplm2Ks79aoxztTVo0xBBwEzvWhrvrLz4
	HEXysjfYH+2Tvl7g4d6KNOl53kd7i55pjGl3MRFcK5vDBmEaOO7KYIuSFoMGzsP44JT
	moJYR09b1nO+kgwJhj1LKLmp46rtRhI2ZUWtg5YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653099119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zMAu0J7GDoDUSvV1+Rn9H5+ULWS8zrww7vJnMeVgQEA=;
	b=i7GG+n8XXMlyJj0j+0drq3hPUGQ4ja5KnFLzkrd7mLk8vo5XytAhIpqTfI4/PQEW
	Nok+vvpmzBV0bDrPzM18MZ3iIHYGgQfVy6dOUbUpjWzRjlvEKxD80f2POJYjkfzS9vm
	ZLWObbeXcc+Iw7MCB+j1HnO3KAFXrptPiKaVVclA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e462c2aa-a0bd4c5f-6616-4a8e-89be-a3b8c92d25ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caf792e8dee3f46c7ed2f15cd181fad248752fa27d4b82310544245a9214cdf4
Date: Sat, 21 May 2022 02:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653099119
