Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061B57B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656547612;
	h=To:Subject:From:Message-Id:Date;
	bh=AiOS8N++Y/7XmxVCbGpApC/mU//9fw36Ml/y6QrAbsQ=;
	b=PVqKv/ZGFz8iyJ19N3vdtTIoJq5KXcFuDG1hMBFBsHfkEqH0sQqH2aiagLFA8v+I
	GooO15xGK2QHrek1i2pBVnHg7g3lkkPudwU33weGWabSK42gldxlb43hr6ezPxACijN
	SzZubq4TRthr/YNfM2YN1KtuTLW2gWpvrSfmZm3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656547612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AiOS8N++Y/7XmxVCbGpApC/mU//9fw36Ml/y6QrAbsQ=;
	b=GBZqlpx1O9RDEyBPZyEzgm0O8AzdW0d+bW/3Td156On6SOEXRTkDUulyJ1ztjcIU
	ykgfU5TJV1gUnA72Q+bKgpSCp64GsZJMiz1uqA6nBFDqBuDk5wMu8gH+0MASe7grDub
	eJF7BTiJdYUUo6isO3kQ+2Mii8P57+njboraj+CY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1ee9692-5b29fc2c-b04e-4b97-8adc-0edc42f7009e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7768219a0e6cd2a65a6170a6269e2ab2347e342e6a4cad9c7cec35a0208b1cc
Date: Thu, 30 Jun 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656547612
