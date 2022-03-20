Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9768533F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647793285;
	h=To:Subject:From:Message-Id:Date;
	bh=ribDPqXxE20DoSBOihm1dl/+PPvg3b8LAoIZ4x2TgwI=;
	b=HAMZpSZO7xunYVrdgxVr0joK3tKzTtvOUUpxf4PizVU1kf+NaHocI3VqweupbzoD
	oXhL9aqAm2VLfStUQAJ3MIe1VfAsgtY1sz1G/QZhbqMRo9jF+StCjR8jd0GiyqQjTnQ
	jqODz307Z70jTM3G6Zd53F9Wzux1tDkJrBHuBTCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647793285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ribDPqXxE20DoSBOihm1dl/+PPvg3b8LAoIZ4x2TgwI=;
	b=k8cJY1vcFL5WawaDmnN7CEF3crxQFM2HngxiTBMOxy3/7D4P9GNlB5MtX5UgZREp
	EihTkFtEb3H5T+7Aah1i7LLLDM3I0GH4846mflRRrIbvf4hP1SQ9FS7oQ+Guzp7jjBq
	v6LH1oEyUPsI9fb0wUU9bNZnb2P2p9m+mP/svYdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa822267d-7c1f2a31-2cb6-4d9b-af62-d7b4e6a2bd57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4e7b05ba412df601cc0ff063868dd3c7beb760c0f74aba52c28a43da2574b1b
Date: Sun, 20 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647793284
