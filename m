Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FA817D2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 04:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652330579;
	h=To:Subject:From:Message-Id:Date;
	bh=uabcHFb+rPFpLArwRFAkDtUqDbKnQN5wwtg6VfXDN2Q=;
	b=Ck9xUBzmGuWfAr9DFflS9qVH+HdJPMDoy9uu0H2WbkgnJgOymiC5o0eTAQw2+VSK
	eIpTl4mOPFnAqFMN2iPajTFM1Dyz17OOXV+fCVtOkKfKdNQF+WnIAa+CaLD14Rkd7FU
	J6p9ZtlOWyd+rXN1Tk8NDNpM5IhxU6/kpXCphQq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652330579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uabcHFb+rPFpLArwRFAkDtUqDbKnQN5wwtg6VfXDN2Q=;
	b=A+ph3Y+jhtGiRtZOKH4i71QlcnFiEwLrEAOr4PaYcUA6SthngbZX9KXHt2rV6c0H
	KZXFOu2KF/8smm5+qdAiBr7rSTfwT3tXjTfsslXaxDQ1edKgiahGFMDFTI9R8m3w3dk
	V/am2/z4vKfs06wy4WKC2Yqk5s4B7AV7v2OkJRro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b693c556-9875413e-178c-437d-ac57-b35cc3afaa1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c6800e5d5440cb6ee753334ad0bf46cb2c22c6f9292b39f418edeb4d4eeb704
Date: Thu, 12 May 2022 04:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652330579
