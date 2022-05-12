Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D02E33C2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 15:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652370239;
	h=To:Subject:From:Message-Id:Date;
	bh=PNu/wBUUukwEImFSUkoJF4qM1lcK4f6+NppD5oe6uiA=;
	b=k9vVVydrGVIAXSqHmBGrXS0fKom/3Ow50FvCyK1wj6MwAoi9j63LH5ylUDEs647e
	rvvmA7TUrEV/9fMGeK2SzDSRMp76c9uKplWOB6vz+PYPrFBUygq7s0DAHonD4gDu0Fq
	9QHinKSOAzBqB1neK5yPMzws29l3vR/EuQ70ZkGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652370239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNu/wBUUukwEImFSUkoJF4qM1lcK4f6+NppD5oe6uiA=;
	b=V4ZTeZ6NuqrR5LWqufYKpsAeRjQ95Vb3CYgnwfAeANmBLitGIY/JBJQcXlPde/Xb
	KkeXizLkUaCYLA9zqZUrF0w2viNUAKEBW4WUaQp8pHYUUjH+xKSihU/BJYok4o/S5ns
	p4W4NPn+cRWOefeQb4qfEoGX+DuJKOrAum0XlmYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8f0ef33-66da4f83-36f0-48b4-b9fe-7ec5fee20f69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca2c2313ca991e58f931ef16bf686cc57e8cc67272174e2870688783133c89a8
Date: Thu, 12 May 2022 15:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652370239
