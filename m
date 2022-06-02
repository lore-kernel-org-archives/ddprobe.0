Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F97E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 07:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654154639;
	h=To:Subject:From:Message-Id:Date;
	bh=E3Kwq++9YD7gcPGEeG9tolA8Qy60w9izuUH0SUKYa74=;
	b=hF0VnNs1mRYrhyEHTLbNzKdrELTNyCDazRMIraFCqIIv1RubEP4eZuWpNv8U503K
	oKrw/89gxNc+gYwvEKFJd9zvizv5Kb2pPAmhcMroQPb6vGhkADX4+AIoWNsROtUUgq1
	P5YRnLIPPtbAGBvU8x39lxuCT3IVLRDGSldarC/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654154639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E3Kwq++9YD7gcPGEeG9tolA8Qy60w9izuUH0SUKYa74=;
	b=FkCLdRmXTEU6dsVA5Fq/cYHZfdN/eazSgpwldittYvYfKPaKWfkWQnnE1e8Qi7rc
	mH/f87Yjkm8QlX58hr2e07oNmJesw/9gEBte2DKjWQiUvb98672DXdKH53OZXAb3gsn
	IZZVhYfdR1aZPeoQ1o3Kw96sIDCb11N2WrT+qg9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181234cb7a9-3fd56380-02b4-4d18-a5c3-4f2366ada65a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddfcc715efd804580ebfb59560b919f2f49dd7cb7e0958b6cfe5542f11c43c17
Date: Thu, 2 Jun 2022 07:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654154639
