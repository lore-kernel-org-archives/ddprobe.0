Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027BD7C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 04:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653625919;
	h=To:Subject:From:Message-Id:Date;
	bh=oG6BAlpLpk5nGvudnFUtvYB76jZPK+9ZZuOPSIt1PQI=;
	b=I2kjHhc7fH5PU3F8HLueih6EyLgFShXMX0m5NvbGTQIX9vOvtXdbJB68fELjrwLg
	aYeuWCJFp9Ha9k5b4Rjt1nDseyiCq0Xj9eWUc22YKyQu4giW52DeiAua/3eT7DfRF8h
	2Qtrl9/F4RnXvMVz+ivtHOVAqpAYpiR/sHAltm34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653625919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oG6BAlpLpk5nGvudnFUtvYB76jZPK+9ZZuOPSIt1PQI=;
	b=MmLDK4+Kr5D2wPwu7oi3pQXM/LqRCV1xdg8hpbn7Bsna2mZz+Je2kznazNdT27W1
	7H9oQ3y6F6E87X+j8rUcSztH7CUKIrYoIEB8PDoFX8Puk0QGjxdFKu9A6idvftDsu8l
	d827Ri4sewSPjkzrwfLsgEhdacvPgI5a3T07vKh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103c91745-abc606b5-8df9-4ba8-a592-7b6f3d496d0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df7ee1fae01a6c88476306eafb16c7f692c2b411dc15975751cf28e47999b743
Date: Fri, 27 May 2022 04:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653625919
