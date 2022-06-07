Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFFE320E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 22:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654640459;
	h=To:Subject:From:Message-Id:Date;
	bh=RJNMYXKKWbSBv2+Y0QIixuqWTD0HOxoDoSqj6eSMc9U=;
	b=YfG1oce6QsDKf1zwMR4tU6fcMPR1FyM2c7b+Ti4xNNqUG8R189gsAfmmsHjSKv2M
	dbw7jc9f+LrbNTtyfRXVTc7DaNUbKKEzeBqG3UJgqNnNVUVom/wQ4wWlJh3SpBSJv67
	fYb9LX0Kg2A9eCWPFmTCsVbVs60fdgHH4zPjWZQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654640459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJNMYXKKWbSBv2+Y0QIixuqWTD0HOxoDoSqj6eSMc9U=;
	b=QzhbBmy9M2XDMVmx8pRL/IV9RvXuj0yBQN6Gawz2bp9P952EtsS6ofMV7VPd0kH3
	bqojaBeRjPFo2m44Vk1G7ECfSR6bcEW53hKqmfhpNc5H1ZkJ5LEluQbmydqJFN/e6bT
	HEb48KULXV3RcfpH/YI0UHjShYpzwy5C+6Ot/LFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814041be1d-bac1eae6-997f-4b0e-a68d-3d93ea4a60b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3343f34ad433b8ca11c205b6af1e66a3c0a7e7ec97dbca4e798f5e6212188b0
Date: Tue, 7 Jun 2022 22:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654640459
