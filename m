Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0F52F33
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 00:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653005399;
	h=To:Subject:From:Message-Id:Date;
	bh=n84+xKeL1oYSmECtiSRi5mBhmJoWOBN47OvFpRCQbLs=;
	b=Z4F96IavQQrwTbMvlQ/UZab/XPG9EmOXlUkfJ+u23OqoclJVnLGjWUkBlm2Xz+gS
	OksWk3k96bCnU7F9pIwpbISbTXoPGV5bY5jmJuI8gmL+wIcXxTNoKuJR2KqH2xiXxuI
	Ux8+tNK8NqalOK6UrtWbdp+QZOhFrwCC0NbOYJBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653005399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n84+xKeL1oYSmECtiSRi5mBhmJoWOBN47OvFpRCQbLs=;
	b=ZwNm/lXlI46QMFal/m0ftandQMY5UOERhZ+82Ufop+rc6RqotvKfW+Ya674oc4bZ
	OXb7uVWVPU6+QvusI4qWX7BHUN+hf2Bw4uuZz/GQ9ijyS8Ur6QaB3W0ejyrPuCAwflP
	ztwvvebHjGhF+8TnNjh5u1Rr4pgDwCouHfMP4Zf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180deccb4e5-89663136-ecb4-4774-8482-c1d61883f746-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf804aee0272c959dd436b895859890dbeca06d4d3413c6da7bc58efd48cfae8
Date: Fri, 20 May 2022 00:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653005399
