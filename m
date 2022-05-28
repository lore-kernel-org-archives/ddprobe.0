Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E2523DA
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 13:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653744059;
	h=To:Subject:From:Message-Id:Date;
	bh=t7ENPJvqYkiI19sYW5p9jyi6JuNasBcFG1H+cRfwW/0=;
	b=bKtvssYTIeqCe+tRb9N4L06hafjDdCkKmq+Y7/YTc8A4DFMR7+e4eckIEKwtNe4B
	Pocpo1676Ql+DoKukbtndnqlnMB7iQjgUMeur2dV4BHHCBRylPXEOdsTmse4JgSEtq6
	EppaPbc7qLZm0xTxk6NpLwKS5qgEd6gVH1UhgopY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653744059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t7ENPJvqYkiI19sYW5p9jyi6JuNasBcFG1H+cRfwW/0=;
	b=LZOkTgMWYDZQA5IT9m15NkYmA6PXErp79fxTQbWB30x76roIPadMNXM14XgOhXy2
	A8Y6yV7nNwbLTyW9X0VVAFXJteA4yMqJw+RePocWfDqJXkq7xFsxNYH+kNNnSr1LBrc
	WJJo1Zd9Yc7eQRDdD8IoLcOiDVUIqYnFbl5Ih12k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810ad3c390-fad9db18-2b05-4831-9be6-e35a3b90926f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b85c1146a4a18beb2781aecee7f640e4fe1f3647c896f9c6ab1abf8767c1e78
Date: Sat, 28 May 2022 13:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653744059
