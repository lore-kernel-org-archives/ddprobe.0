Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2D7624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656428812;
	h=To:Subject:From:Message-Id:Date;
	bh=4zdv9+/r+jRNSRwHcfQEY3dYvirfU13MfLwuUUYo28Y=;
	b=elvzgOTZzIhQQ3Fpdh8TG5M7iCdSZh95UUSp8U2+f8FbQt19qYD1/xKTwZJqPINf
	3jveoQMppwQhiXZNXmrzI3ej9wuCjA8AHSSm/KcOxS2EA+exbeDbAfgNIWD93OKdl58
	Foq1GeE72ZRR8GrLPP29PmqpFO58ts85H1JhZ79U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656428812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4zdv9+/r+jRNSRwHcfQEY3dYvirfU13MfLwuUUYo28Y=;
	b=UDer/WesI2v4VHUlDhA3njyxVMaBjOQtIkkC6ZIO3pNSV+qhb2ww4zjNc0PthsNs
	9yT1zKY5oThctyPrugkE2mJdFw9X6K698h1Sg2DCPp3HRgqRZ97j1EVvzqxDxr+qEgX
	JT9r4C8Hw9I33gCSG9xg2Kg22pWKtCREtyVOxQwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aad9d81e-fd2f52b6-3074-4db4-a14d-6b0e68f8bc44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78f0f959c76c959acadc58561d2f23de4b4a8e8e495da4a6b430106d2c0a55b3
Date: Tue, 28 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656428812
