Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8547F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 04:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655441219;
	h=To:Subject:From:Message-Id:Date;
	bh=4Lta1hR9I+/e6/3Ffm08wCpF0LRKtjLVoiFQJQXkKCc=;
	b=SB4FkI3hTO1M5KlkWYmApQfOhTEmkh0ELhQkgIom11csk9uhqtE4sIGmQjUhWVIx
	pRKYKSDBD3SonkLdDuN1OsHo8z+S1kFZQGK3j/Sl/mAwH2V/Wap3Gwbz2BErHWxQPsz
	5+P3jBLlxZo22DawvA5Ed9tv7u9M+iPTsgpJBN2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655441219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Lta1hR9I+/e6/3Ffm08wCpF0LRKtjLVoiFQJQXkKCc=;
	b=Cwemm/oOEidAl6jrY5ePLJ6OUdUKDYiyZefCVWE4wFFYdmSq3S292kL5zTz+T6eQ
	rfbkzOofFMkbJdPH1Grrx6gCEqLra59XUJTIzA1x72M70AXG6sK57X2REaQDLSY3XOD
	6kv5/CPFXaDH7kzJn+MB2mKUt045wmwiMaOjvTJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816ffc5ee9-0c6970d9-6433-49e2-8d59-de14659180ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9497724eb1699c054dd8bfca950f871e72d19a934920f1dd890b6453d918c843
Date: Fri, 17 Jun 2022 04:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655441219
