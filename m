Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1442F34
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 18:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653073079;
	h=To:Subject:From:Message-Id:Date;
	bh=U3X77zKMo/TXOH8Vawc6r+arLqgJR3hZZd8s7txG7jk=;
	b=hy5GPrpXhtBDFjMsRY6xq+BVdwxbt1bayQ0bx/Km+vgte+CvBW+KedEJWAC070QV
	7IA4LO+QWbKOT/BHO/ZoLn6RCTo7ZXlEgoQNGP13TPExpssie8zK2nM4ncRJVwPOASA
	8+ZWpHNosuAbdreIRofcrNb7tRIHeDdjxTde3k9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653073079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U3X77zKMo/TXOH8Vawc6r+arLqgJR3hZZd8s7txG7jk=;
	b=S3e8Lfba6acO+vslDW2NFJfdRQkNlCDqllsnJz+PamMHXNvXdCRpOBI0gf9ypMNR
	GnksAYRAB6L9vy+7x011sE3cHkOk2PNYX5MnhZPBefBuZTl4cav9eO2hj9hNh9odVgK
	ecUajI1YHr1gIS1dfgtVUuP2icZ/dP5oG8CD2ntI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2d56c46-c49520a6-0514-475a-931f-e1fdc01bd370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0894d4469682e49984834bda891ac6bc92bd82872d8f9997a52b95e5c3a48f0
Date: Fri, 20 May 2022 18:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653073079
