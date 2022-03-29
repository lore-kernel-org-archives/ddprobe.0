Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D022A210B
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 16:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648571459;
	h=To:Subject:From:Message-Id:Date;
	bh=PQxNlE8aWnUVQuxFUf3dYcS2Hgs5utlc8RnraK1ZezU=;
	b=KVAkp8ayPQMYtOv8xdty9/ofttp63LOcijtqLl+nmYX9MG+aSlhwF+SRttYRy5Kj
	1RDcyFJFepfm1ikS6Ci2LgJdUhGpp6QFraogMge/3t9gSCOIy3Kop+I5VVWcf/qWdqN
	VElbeHPckQnI6X5JjrQALUsZo5PoQpYUbAjpRa5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648571459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PQxNlE8aWnUVQuxFUf3dYcS2Hgs5utlc8RnraK1ZezU=;
	b=ZYSjZCZYjyFuL8AnJhsDVmMIPyFY6eSjMAkDm7DF0ls8HWhvNk0uyIzyNsYKz1e5
	tFc3xz2AgmpD0q6xP3IKyzj10UuxEI+DQSz2ecJxgJSQrYtTtkBrKoEY8/s0wOeBI4h
	clCHmoeO4kL1Lw4VveJ7LbCE+CnQw5bmz1ZNl9nY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6842333-9adb13cb-f7ac-40e1-9b20-6831010f2809-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c2c5a03abfa0a8595dadcde9837ef15bc1a72a1615cad5b3832af578b12fd8d
Date: Tue, 29 Mar 2022 16:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648571458
