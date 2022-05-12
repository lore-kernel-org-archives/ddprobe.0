Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17832F2C
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 21:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652390039;
	h=To:Subject:From:Message-Id:Date;
	bh=SHRnggHXCKFuTShI/LI/KvM31tIHOQSECOKplDBoIF4=;
	b=fnkClEUGm63+4mB0gpzkPCKV/LmOd9T3JGu/S9fjeMfy54jbH8z+aXQhcnSKirR5
	ixsx/IuuO0S3kedmZegI7ihOuOCoChoWy8V60ki5sGrw31YGd6gkdchVUwUBwxHOqlf
	lhPzXtx699JZRPydJgEMQ2vKtvywefcmC5EK96EA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652390039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHRnggHXCKFuTShI/LI/KvM31tIHOQSECOKplDBoIF4=;
	b=TZhzSLPDZYoIYsiWKv48kPCwIXEa8Rla6ApQ3RFxRdp9PQzumDZEyZVN86Tm1lMb
	Sa1uRsN4Ot+PQoXUafE5/aqOvIAOUWjHCUdSlNhngfPN/KPeTOtqak9Tuwx8eGXid6q
	wxQWYeWQdcTIEYBDjvA0OJCvX8nctJ+JSn1zRLWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba1f0f0a-dae3cb75-a447-4524-b75c-2e5e1438e1ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f7adea17ad3d985150d31fc549862a09051365b58ffa47a395e8c40c3c0b1dd
Date: Thu, 12 May 2022 21:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652390039
