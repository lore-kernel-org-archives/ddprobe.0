Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDDF2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647598284;
	h=To:Subject:From:Message-Id:Date;
	bh=ioSmz3IijiuCditemvRk8kAE77lVZAnjSsPOhnL/9pE=;
	b=ET8owAHLwqfgCDEh/I/OAo+Inkv5yIz6ERaI4xQrX84zcDGiFy9VhKhGbrhXT0i/
	btuPQsNjvmwP5S0Q0E0/4vyoYaxZT6RsIUvFrf74SeqOYMS2i+rjgSngMw15I67BjYf
	tC6Z1TMABMDouo4s6w0DXbd5d6kJ5Atjdao7+8sM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647598284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ioSmz3IijiuCditemvRk8kAE77lVZAnjSsPOhnL/9pE=;
	b=cCzoVsRnKEav4teDZ/QPBX3gor/rXzoZegYjE3Zofr7YaaEMqiL2HJZl9iOpR1Vc
	EcJeEVbPc1Z7juTg7b1qpprtAxqmjZ+vlTeHHpAkSRjY0fJQ9ZCprPuG3lkq6AN5LlS
	pm0QUJFD6Fz+mwa4L/ciH8gnGnolDxxm2uTmNSU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c82afdb-47b0d866-260e-4fae-9353-6f139326a612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee8cbb476ad3cd75777a23e3490f8b0a3b1faf32951d7a05495acf73dc55ac99
Date: Fri, 18 Mar 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647598284
