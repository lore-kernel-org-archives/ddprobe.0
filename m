Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231563D9D
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 23:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653436079;
	h=To:Subject:From:Message-Id:Date;
	bh=4VWzEsV5/ZYqmCZMO7GQPm9Cc22+K1accMRllVW5Tjg=;
	b=FpY3vOAyx0ov/ahNWCVpTyagUSxRK5w5A0+zxP/6FGYfkIOpbuFMRP0oLNwqc9PO
	YNb4uE3KjY2rii91+Bm/VDAHyNlk6f4q3moCurGCM6w9nM1YxIN0MBbAgU6uXs2FRZD
	e8XnrR8Jv2Dbt/aGdrS1KgLRjxLinbVbjA7D6DIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653436079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4VWzEsV5/ZYqmCZMO7GQPm9Cc22+K1accMRllVW5Tjg=;
	b=ZtQve4Kb4GTCOLVFcDH5izSnAcA6azZD2HpZG7W+IRgynH4WODybdBFMJwUaOJ6F
	YSL4Tlt49tYnylNvFhiC/TQ0QPYNxW+uZ4j55R2JONsBbSLeNFvmb8oDK98cvpbaS3t
	QHdII29IB3KYSm3WyN7qXWjOd+MERoxTG+H1FZ0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f8785cb4-b3641c80-c350-4bef-a905-5e08ee9fa5f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bd1f5b5b7ef48f8bda2e6b62ab757ecc892fdb2500d7a2119fb65ca469e9f0c
Date: Tue, 24 May 2022 23:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653436079
