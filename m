Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6C55395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647729384;
	h=To:Subject:From:Message-Id:Date;
	bh=Ixm1pfscMVaUWwnR1VO6g4ywVYl0IPnEougj47kKq5A=;
	b=FxtC/lExCuUS2Wj0yleKcH5Aow6umhqhltXjUYYPL/kVMiruH0czdzHU54dNp65F
	ToJ6S1wo05aOsb3+5AfhD7WzFYzgZjecKvBoHUgqmmgcYsAwCjaDuC5ERy0mdog2iK3
	nOHu9yzYoOMzxwD3Afg9sVwBa9+QnSKqYfOkKqkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647729384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ixm1pfscMVaUWwnR1VO6g4ywVYl0IPnEougj47kKq5A=;
	b=FTRz+jLSQjLdlJ8ycxgBnIMUfz1A+hUsE1ebpOYDTKcHIzAlqvH21gmReSDgPjCF
	Bfv2TlqziZtKKgFDekN6hjNT9hWtczTljOYM88tN3Oq+ZR3o4UOIfgVgPs2OTRn2nE4
	WWZXqUOX7S5CW8T5aQY5OI56ECi1/iLT7+3Bcihc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4531d26-b8a26419-6f1f-4654-b447-7cb9fa548b63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39f8705b916f695a337e4cb3ca7cf36b1986de5ed4858ad20a4960ab0395c1f8
Date: Sat, 19 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647729384
