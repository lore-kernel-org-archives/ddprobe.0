Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2FBED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657375012;
	h=To:Subject:From:Message-Id:Date;
	bh=VKkUDEk7cmoThB8qj1ZblWHadT5uhEeUrYTBIQQu/kE=;
	b=Qy7ZGg7dBj/eVFpHZtf+9ocq+gZpii6qwE/pyvjlaDrtVze6PQMbgueMI33ehn/e
	bzVI7ivOKbZNU/+xmBhej2hgKJuONGkFNFj3PLHgYFEr+EKIDOhkVL98vAi35Zj4L9A
	9SaUuQ5zqOUKngfTQ7KJyHNDraUFPcgfEeQhtDs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657375012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VKkUDEk7cmoThB8qj1ZblWHadT5uhEeUrYTBIQQu/kE=;
	b=Bp4OOYF7AbX+Qw60MI3tfLbYIEGXt48zMSacMIJuS4Fd5/iIcSOIzK/m+9O8p7yZ
	HxzPv+Pn2yhfCfNGa4Xpp6L5vElYO42vJHxnkLcbdESBv4BjlGE83esbvWZ6HHbPQ3N
	tcNXogT8XhjNDGFjhJ55RO3Q1u4nh353gsU5dBkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e33fb5cf-6501ab83-b01d-4bc4-b938-7ff999b38cd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 546d8963478c8d64c1f0b5c9e14e2e9d3e5b6e74784c797ac777a3c87935aabd
Date: Sat, 9 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657375012
