Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767D57A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659070852;
	h=To:Subject:From:Message-Id:Date;
	bh=tcrBCqbrs4BlisWA3G8iLD/bzkjwcnrUTXPGWiHF6GU=;
	b=lI560cxmKmydRwvKneuZId8e/OoDb/tgFUDc0IDwItNWnqc9Kh/NSpqjSJa73jgD
	B0X1NDKSGma8tBIb+163O/DAbRVi1bdt6oE5af96j7BPSoudxNZYd7rLWIf+oGq1xKN
	m8g90PmZtCdjVxC/6AwGf0KftJoKHn4zcIWfLdcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659070852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tcrBCqbrs4BlisWA3G8iLD/bzkjwcnrUTXPGWiHF6GU=;
	b=Fm/ECMTEIQv7ywvkonuaWolUMbV0F6ubYPvHcoNIE7guDBVRuWAOKgMtFtx2wW+6
	FUxBf1P+ALxvKNfe4JlPM/02/4QNLJwbe1+R8s1UntnbDkYOoq2wR6+KFl2qLtnj1bw
	e2aw3FLsqb879/WtSE+aR5XMUidBXxH9H26ezp3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248542dd2-8aca944b-78f3-4b7c-9183-2f1737886621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 169a7133bfbcf4f9c9e90d187d2e3d9ad9ef66ed60627214ca9ac361815ae163
Date: Fri, 29 Jul 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659070852
