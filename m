Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625EF15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659238852;
	h=To:Subject:From:Message-Id:Date;
	bh=3MsbGQtqxu2xcTwekTlBrsD05JpmfDZVUwZej98Lx3s=;
	b=NHD4rPBCtTdLH9euHHsnLOhM8Tb/U/WghRgGvpUR+r5G9pu/l+O8AbYs7NHhm4a9
	2YKo02mj33kJ6LZG/LnoYttEohgyVIp1yThN1SzNmtkCCMTCNJnw4d+c67y7h3qAkO2
	n2xBZ8JfgzSsh5Bq8aqeiJWbCrkmC+9p/Ohenl3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659238852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3MsbGQtqxu2xcTwekTlBrsD05JpmfDZVUwZej98Lx3s=;
	b=ZVkF8hCx/K9XGJQaJ+H9mFU508QgfePp7MOM+Gr6W7tGjclm1cHFXwIKCABBuF17
	vcxUkw2hus5rHj8Ba895X2aPY1ldlgwGe4B/faTqVB9F9tgKe0h9xkf/cQEGY2kL5UX
	sWCUMdcM9bbYitbGvDtocM0YeGF8R+bUsUwM6KPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825257a7c5-7a22afbb-3a98-4047-b8b5-e714c4a372a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af137bcfd3f1d5dfe038c15fdc2dc68ba729a8dd41a2300f74de5367135981a6
Date: Sun, 31 Jul 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659238852
