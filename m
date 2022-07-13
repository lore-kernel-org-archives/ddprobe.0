Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F47A29A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657714013;
	h=To:Subject:From:Message-Id:Date;
	bh=jE6IOX/TvnONVvmjA0Wyo3Z04+tcSEV215O1L8hJB8Y=;
	b=PLZ13ky2MV6vDL+vtzdX3HzQ1wm05ZiITkfoxAYsYSx4yKZk9+bKXwCXD2OTfZ6h
	Va3GxPYyUVCFt56+cxsQyU2V/i731F5OB4Lm8fee2n0znj1WL2/410mMzz5EGwDLpjP
	fj0rQ/xkASQYNfty+4LFhTAVUnXpttB2wqhYn240=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657714013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jE6IOX/TvnONVvmjA0Wyo3Z04+tcSEV215O1L8hJB8Y=;
	b=j8JM4KTLPkFa6ZXqYCk9VW0Qy15fS6FVV0+1v1FGaPiPj2Sx1aiKb3cWncvVPENb
	F9p6DV62iLVWNgiEjlZS898bxT/j0IG5YRfXxm5hho+n2QLLpBrMNcwOlc1HbTaBCze
	j8WYe7eTW3zR98xCIOCkabekwtqdnmtqLZ4LiInU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7747143-9c129bcb-9cbc-42e7-bdfa-d2e47335f6a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e19a74f74c1c3a0b5bea19a6fb1398e5158ae66f1c3db0c9c02fda8d6f5b1c39
Date: Wed, 13 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657714012
