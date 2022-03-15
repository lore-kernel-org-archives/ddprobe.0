Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21AD1B61
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647324985;
	h=To:Subject:From:Message-Id:Date;
	bh=yWcaLshXVQND5CShUdt53iPQD7dXNsqPKKmfR5orfSs=;
	b=RNR+6JrXlOQZMm772C/53TSRQzoCP5Ow4XYgfvQ3HcyMfKihcpS0oYIOKvevCPT7
	ouatR9XWDrLnOjgsqe6Euk0oIL+5DH2LGZTLDMIVEMYLH9cCI72NxxgnVdfhqLNhRRm
	yTKpkTu6kb1FCGQ6Z2Kwk9K1j4/VZSwNAOE7qmyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647324985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yWcaLshXVQND5CShUdt53iPQD7dXNsqPKKmfR5orfSs=;
	b=BOjltiCCGlQnzbvLixWa0sXuoLoGw1sXvIhY7Y2MaPzHroQzilwKjhdTMQYHRvpy
	7WPbG7mi9/Gmo7Sq0YObrKyKWqizF2stAHPZtbMgsFp9iigaUoVnB828cEJV58vqezi
	BqjypvYJTcBzOkUTtHQ5FB8sQwY5Yv/Oej7COkgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c38758c-e971429d-4a7f-4b99-9fd2-f2f05b1d7ed3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36f060c25d1a944d2aad167b442016b5c695db3720872b0ec131b057c762e158
Date: Tue, 15 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647324984
