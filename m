Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDDB371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658733412;
	h=To:Subject:From:Message-Id:Date;
	bh=DKZ79SDEysVfMtv9JuFuG9BZRfWVXbQ0JaBmGINxdAQ=;
	b=GOm9r1pK8xlGiay+p/sO4z7SrWiIupSuUnuF2hyu+f/f7Hq9fE0U0E6TIwMD5qSM
	5HV47pBEnurlywsbBG/V6FkSjPIRXMAhbpnKH3gw6uNLOSIXztJerXD9um4TUFixOsp
	ACQmaGaGXMmvFI9iQ7nrn8P9vQ8XsKt6n8gXPOwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658733412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DKZ79SDEysVfMtv9JuFuG9BZRfWVXbQ0JaBmGINxdAQ=;
	b=IEp2oJyDE1h+xNxTNF7y1JNwY8scm3UNpbr8/HcqmF634Lfj1SZBenr49yKFYULh
	/0JkEtnsXYVRvX+i6xeSWdASx/zgJ1AODITy6I7JUzQZJrmaaq47dnpfrT4E3K2Z987
	z9kofC7K6arFEIcfyNF31kU9j0IsJe4+jhAnyFV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234373fbd-55045c95-a3bf-4eaa-a4bb-2027a4ff94c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f36578b51fc71e159a654f47f26e311114b09051a8634bd0e40e7291f803b14c
Date: Mon, 25 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658733412
