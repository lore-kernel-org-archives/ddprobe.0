Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A7E185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 13:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653657479;
	h=To:Subject:From:Message-Id:Date;
	bh=VuCJhCafeNQMgTxXxrDwT+ki2TxE7qpOMIhpd+jSlQ8=;
	b=aO24b0PpRdQc1hXimHTyMex02kU9fywozKBFTmkSM6pNXljrQbNcr6a/Xq8EDwtq
	W63xCiO2iaO3F4cKyoi0ZM6qkT2MZ31zn5NkfrJrpMtcieQ1ld+zgb+7QcHas8Fbqv+
	jV1NYzos5tUL/uz1RLmji8vEayHIfwXIl3cbkXZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653657479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VuCJhCafeNQMgTxXxrDwT+ki2TxE7qpOMIhpd+jSlQ8=;
	b=AG7ziDN4/rFyNN+6i+suT/+86QOCAN4bDYl87sLkhptll8EJPFGrjPcOs2a77sen
	hKX0XjM/4Nrd4iRlLly9om4FW9zlAbSAeGxOcEybnSsnCLFN9AlX0+eD5Z7pMjBxNIE
	xsfQkowfxEyjeJ6QZtiAxJMyv5Ln3duGbgBqB6/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105aaa896-50658a2d-00fd-486d-99b6-966af9c8e411-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2344238b21873ce338703685697505e1f58c099171881b1a9f970267b897e061
Date: Fri, 27 May 2022 13:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653657479
