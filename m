Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420D0258B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657131412;
	h=To:Subject:From:Message-Id:Date;
	bh=wAWwtGNkHpyT+Rp1zibTzJeao+KWgtcDTlsRWdYyOGs=;
	b=S/2n/TjaTYMjzeyDvRMIkB9mZ6Z9gJq/5dxfmqpUMX1dNlsNsGCGA8geXDkzLMHT
	6LQ3Av9g9iKoaR41uwOQfUe4Pe0X5L2MAz3Z1V9e9prWw+W/PxONcYB0BPwxGcODMTD
	IL0Q5w82nRVLA9GGR0TBn2+9OcpaFtxumsbFGqHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657131412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAWwtGNkHpyT+Rp1zibTzJeao+KWgtcDTlsRWdYyOGs=;
	b=Kuzvc6h1IBTJjbfAw4HaTqJG1OZaSHy6zmij4dPNSkJIWnYUjTIQszoAKc9m6VUA
	JJuzqiLbL9SmFbdYfqVOlfdEfyjQQHIWF2hY2ZVqIegCgvN5MIJ5mxV8KpLukBHQH9k
	29fy5QniIVnRVjdqrbUiW/9NldKYJ80wbYHw0OrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4baab5e-d2f19cd8-02a1-47fe-a6c0-d1eaaf87bc3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53a6050cb233da7a2dc3fde29ca2bc2061a8eec15078fcfe874eb5cee164b142
Date: Wed, 6 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657131412
