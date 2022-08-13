Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F317EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660380053;
	h=To:Subject:From:Message-Id:Date;
	bh=34+k18ewPE/jMFWGQe5rgt98EnlZKBfxtgpf/ho1qJU=;
	b=j511ic7uIUpL3Q3UQaqClUdEINrZkhgPlg6IX5c3+DFPAFLrELgQIXyMkLOyUosf
	ObYVtaB2JvHUDfKNr0PvypVw5lhonI5VXNVKgmI4Ua8qIn1srb7SKxwdQ1PZG7XMZqB
	qjxMagoXIcbMoptZcNB5GNVpu2IUaqryJ4B2C5xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660380053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34+k18ewPE/jMFWGQe5rgt98EnlZKBfxtgpf/ho1qJU=;
	b=SEzDRpOq4qwHkwSVr0L6zaJumyvo/nr0+kDDDxvZxzB1JaEfGuODGiwSSMjcraG9
	zx+iOpdn2z9qg3KD3OjwJhsOm+8eszSRGzg8eXyMn4FfKFR3VJFWEZ1vh1fRuiNKIkQ
	8Nl/1It9KaAfJ4jCmHCZRognKeMSpRzm/XtaSCHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182965cfc79-78dd8539-c901-497e-a99b-c7001c5ffc4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e66d8065b56f70e01e15cff52d1e64c6a59d96b045e923af0a93b6af94cebf1
Date: Sat, 13 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660380052
