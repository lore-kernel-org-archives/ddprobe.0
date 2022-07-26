Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D80B621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658806012;
	h=To:Subject:From:Message-Id:Date;
	bh=CWWg6IkK5ZEay3OMcNzalK1q4QD+qSzxQV7WexGdX3A=;
	b=KvJ/MRpZcByf5ZIBZ/zMBFVmj/NO4w7DEOlEgpLb3jvUOdIHfyUykGcxXyN6OX4t
	zIXfwiB5QzkXnpeWgs7n4ySaC/CebZdTislDNPmwaMKmwqhGn1kM16X05MBjG/L9DwA
	yYgOcL36mb3UW+hC9/UArBg/6xUxCtsBdsZiWTxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658806012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CWWg6IkK5ZEay3OMcNzalK1q4QD+qSzxQV7WexGdX3A=;
	b=RWN6KLOZShobamYhMYvihGgQyTYMT7BgGL4ShggpjBZfCRhXDCmw22twr8PZEScR
	vO99Zz/GJjgX9E3fNg/kFPTKPlbpt2Ujre2Y9YwrWBf0Vxd8I3FzXiJCHkYXBl/jSsa
	WQD8nHNyEOYl1HWpFmptblmLoBhPyuf1/qxHGXzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182388b09c6-f6bd048e-054d-4242-a0b0-c2c9371213c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25c06979c3f4012a0fd15aae8e46b3a364762331b4c80443b71241daeddc2550
Date: Tue, 26 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658806012
