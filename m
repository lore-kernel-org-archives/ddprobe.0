Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288D47E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 19:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654543979;
	h=To:Subject:From:Message-Id:Date;
	bh=Pw2mwrWW+4R+s2sFLjWswj5Z5LW4D4b7XNvdgEbCebA=;
	b=iuFMjIP8t7IJc4kmkLymOfgrnN+M/sDH+qI1hhfSAaokdWkrzkl7qBYp+2fZ0332
	JqG69Tb+5gL3zvVV7313nkhhXZamF6xhfYUSaVZ/ABBiU7hl1/KPv0VHKB5MuIivYut
	M/h2Yen2uL81OZyq7J+cQAaQU8VFiMUCvXAAL2ek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654543979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pw2mwrWW+4R+s2sFLjWswj5Z5LW4D4b7XNvdgEbCebA=;
	b=Jy6/odfgG3pQnP4rwqfBy6kPIwaOlJQ1jheZqJJTXQcd6xZUXutcIUic2ooiHhSS
	BxhrtLVGhBFhK8cFmfXuYmzlkPTc7YkvhlNnoO5QcAZmaJegTBFQRUmfGCgXTwoG/ij
	0+3bAwX0WE45yg3h3O+ecXf9KmXAMTRTlBEYYPEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a8192fc-7fef6dc2-85ab-4eae-90f3-54c26f9c3d8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 951bda2381847dafc981e82b68b3c2b1248875f424ec9a47b27ad917cd1b0cfd
Date: Mon, 6 Jun 2022 19:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654543979
