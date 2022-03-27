Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344362FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 20:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648414138;
	h=To:Subject:From:Message-Id:Date;
	bh=45RBC5aCIwaZ+32IMDsfFLNhjxPWAb+Dv4goFVu4k4o=;
	b=eZPenQw0m5qtQ+EjVzgDxzZgqmm6+jU5uZEW5Tqxz6fqNrKK1kySW+BTwdYgxtro
	bet6CBpuXbIaOZ1plzejjxFu3PUytOv3xb7W/RUR0e+tlp/CG4vK4wCpDRTvsACfW6z
	7G7lvyqHI1r2utsq5q3AmDlz9QeJ9a5TOBeNz0Fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648414138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=45RBC5aCIwaZ+32IMDsfFLNhjxPWAb+Dv4goFVu4k4o=;
	b=cjOhI9/EqgwvuM2KpO5hh/4SsQLyfW1UK+WhpCL9odR2gqxzYagDjm65MlJRwB9B
	zZB6MCIBBbyzFkEMOBUFKK7xDvsIDTxPn4ao4pYHGtarHrC2F+SHH21v6AVhW1jymIl
	trIFMcWnV0ThrgEjLkY/t3seBh2RILYGsrLTTMM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd239fc7-65fd9185-db87-4ad5-8405-119e9a88c4e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7693f5e4deb7addabbd412c33284c96a2e4601e4fbd38d396c03509bb4bd1c1
Date: Sun, 27 Mar 2022 20:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648414138
