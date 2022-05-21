Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF122F24
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 12:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653135539;
	h=To:Subject:From:Message-Id:Date;
	bh=LnHxrzL7OiyTJU1BOErXVMz7V1JDXYJDYPBx1bLe+W0=;
	b=GUgrm/fe5oh3N3hKuU6ez+8hkY/aaszjnEEzSmbyIhknZryUto3i6rGntDH5e3AF
	+KRtcsdyZlUZ1Vpsv044cihEf4ef2/lhb8pr6KvuWJJlXFw82P1xsI2QUUwe5O8ICNo
	EgMM5xT6PPLyNUeZRj3pn1OMRbf0ZzZeKeYv/qIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653135539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LnHxrzL7OiyTJU1BOErXVMz7V1JDXYJDYPBx1bLe+W0=;
	b=YRr4AssXIr6HqkXa5KfwJhL8WzEQ7snpGY0xfhPPmAg9QA+OeV2cQ2vBqZg37fb8
	Qht1xcjljq6aatsCBhNGyLjnqeqJh+kw/aAK0wbSlFsGJ/DFGs+pUp24JprHebPlXTE
	/+LC13fWGmKBgyIsfQletfLQ7rldCRq/aWJ69zMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e68e7c2e-c6d336ab-a19f-4463-a1a2-a12ca92c4abb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20bbd86e462cf02e3d0399e0c2d24db40c8fa6d533a5f9db199c8afb88b8a922
Date: Sat, 21 May 2022 12:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653135539
