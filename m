Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D836728E2
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658948453;
	h=To:Subject:From:Message-Id:Date;
	bh=S736s+59HhGxumiuTncpiCrnyWoX/NmA+cGbqP0oAvQ=;
	b=hNguSU9AI8balJPxbqmNCFVrq4l1rUmer/kp5XB7VKZPZq5Wv6hTCd1GUYytmrps
	flX8gyNmT+kr7zilYNOEOZbcrCc40Et9Fe/ThVGsEj6f2xRjI1OieTVibQkvSektv2/
	yyjF59oKeiwyV4ZuFgS9qH8rABRZzVrkrBl30c8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658948453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S736s+59HhGxumiuTncpiCrnyWoX/NmA+cGbqP0oAvQ=;
	b=aBJObuG30uN+SVzG85g4a2dN0xlHzeeC7ECixZ2dRy0ajTk4Hu2oOqRMwUI4As78
	pKyC3rEN3RbgjhKtcWatukAxKw1UDbKnKMVPkHIbD8SQi+GfW3uyclM95UKuICLG4aK
	CN3dmnQ5u1xG60j8h6b28+P6AlgqU328e2EAsa9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182410880d7-85d937c3-c8ce-454f-ab7a-ee7ea4211fb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5edc83377ee002ba5c3a5cfe03d38dc7976f43b94d7841d2a577b584734b2a0a
Date: Wed, 27 Jul 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658948452
