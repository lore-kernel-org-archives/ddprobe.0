Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C1E7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647371184;
	h=To:Subject:From:Message-Id:Date;
	bh=M1CpyMtAM7A2oFMrZOPJ1URY82tQdHH+KqWUtq2RSI0=;
	b=diWKsofUN6mhg+5n/06ajdu1fWSi8/hUFK0nvTOGHHx4A48HAxwSR20a+IkZgEyn
	rsQkc7dH2AqJW5v+zbtIC/KqyWJesCTaUfJWRDwox84Zk8wVB4ujbdQcCmEM7Vb2MHz
	d5CCriW1Xsqmlgg7022rZ0KY+kJ1Iz8XCuK3e9i4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647371184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M1CpyMtAM7A2oFMrZOPJ1URY82tQdHH+KqWUtq2RSI0=;
	b=HCrYLY4MQk+Y5r9/2gwqaj30SMSxyAnvt2Hg5v5F4kv3cPRKfE8yZLG27zao92XH
	2/vdpiBfKwZQOpv+8rFLs6Lb9wUtAB0Fz5ZiK6+AlGVGXlpLtYN7KUlf+c8Ft6JKpXh
	Q70YGX+2/WbQHiKuprYdhuHTAn1YKP1NGSjrTewM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ef96a6e-5813a7e9-395a-450c-9872-e7569ff59684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 737eb7a034c88dcd5c610705ab45dc70aa8363bb8650404140550abd95b14b1c
Date: Tue, 15 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647371184
