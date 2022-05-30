Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38F52F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653916079;
	h=To:Subject:From:Message-Id:Date;
	bh=E6VLGkr869whlmoE+BOdoZm4269O4zXgWkZU8fD9CvM=;
	b=N227oPehCGn89bp/4EAtQUyoM+6F/ZKghjVI/1F/F/kBvg6xEOj+uxRu5x0N1A3V
	oJnvkZd+3OkTBakiQi8IHxnGKHvz9FjQr3c8GCSZTLuaHIiVpdqceCY4biYcTyQQeC2
	DLJR9JlckY9GDIG/v7alVcmGbJ8W1kCTezilcSiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653916079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6VLGkr869whlmoE+BOdoZm4269O4zXgWkZU8fD9CvM=;
	b=NTdSYbc90Errpqr8Wh2eJJRB9rb5m+UqklCmnoBaMXIRUP8dDdCkGx4BipAzi0jH
	vu69RK7dEgGQd2M05eXRae850e9F6+TZfe+DC8oCNl/+86ywIhbGPuROseFi7UPq+eM
	5BVE2r9y5W2MsJTBRx/8vpaOKskDWNFDwEf+B4is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181151494ab-729e05c4-9b5b-4222-85c4-6377bf25310d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc8d83d7033eb0f0612ed18ccd402c556a248c3b434d79a644db54ef27523848
Date: Mon, 30 May 2022 13:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653916079
