Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F23198
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658662012;
	h=To:Subject:From:Message-Id:Date;
	bh=TzdYMNcFkP+NfiTVcCvqSyE1EB+JBbAwmU+hRadXskM=;
	b=j73ZtRvyJy6TtlVbkjHZTl4MqA3j2thXL1OtfTJyupZkK2ZwdB0ct14YrGTdugu6
	nr6K/es0uj+N42WZS3MRJI6cxjGwtS7/qJztmUEdJF1PGJX5lfopuu6ocqujAHs2lno
	qBC29LuZlY9z60uS0tGHy0/OSRXTrbQXbQZ/V01w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658662012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TzdYMNcFkP+NfiTVcCvqSyE1EB+JBbAwmU+hRadXskM=;
	b=TNVZZS+LTHv8d59Rs+6n8mvMlD6mhX5wYEMAV5rhXM1QSj395lu74mp2FnAM/42U
	N43RKhJ2w0Aw6zAxYkxjv16u1qp1YcI+h3mrZtPDbrExC2iMcigE8lXb5mf1KXQOA/g
	zKIuyUVhvfdu/McCN1H0y6DE+pGXgFRPn5JWjBTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ff5c596-844ed0dc-cf4b-4efe-a3a7-5b16de9628a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eeb1e7a8701a318df456b15d2e40c0e35752145ad34263086f7f35858df7aff3
Date: Sun, 24 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658662012
