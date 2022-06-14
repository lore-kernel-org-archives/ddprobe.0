Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07018468F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 04:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655182079;
	h=To:Subject:From:Message-Id:Date;
	bh=UQyR2G8XNp7skAmJnpWnyW9tP8kEfoF3DxfbGPvWijU=;
	b=a13xf2mZ1eTxhJ9gvdfBMnyIslMEcEctpnfsow0x3EjGpoeIE8blTy/TPeCigUk1
	j/D5VOSMbQ2VGghWBEqsi0NvTYoybgh84zxB6rH8lkdT7pvuW0MbPNipAmWLVcqrrv9
	17OzCA4WO41mNiwvCsbdSTCndxasDEJxofEJpNNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655182079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQyR2G8XNp7skAmJnpWnyW9tP8kEfoF3DxfbGPvWijU=;
	b=UKI2+GudNR4/txn58IfhsogCaruFvfLZZzCFyoRtM+zWyZhHCSwtVDLwucSwlOXA
	n4mXqAQKfQHxDo/lNHWz1PPUJT8Bqh7GkfYOsb7HvPHnnJNZwy9bkjMCuVIiEabFZT1
	kxpqvyxjVttU3JbfWSAq3mfp3/qH3uiNI1xTy1uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181608a3568-91182900-b7b1-4c68-89a3-40241815f64d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81d55dcf3d963e5a71e04490a99530cfeba5c4f14bc24cbd09a6b86529822e64
Date: Tue, 14 Jun 2022 04:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655182079
