Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF987A4F
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657352812;
	h=To:Subject:From:Message-Id:Date;
	bh=dQlLQhT315KyYNFjujKQiAEF306iXu8bDfJXs6ePmPI=;
	b=FtRTkZEcqqghdldkjORpeAYgc9GBYmSCzBcggoBQirlLHJ39dyp6mVqwPMzlXJm7
	mCGEI8I4poXYmOauUBK/hydDmdnwclTxwCtgThff2qn0olYsl8uTSReI1NpLFIFMCyV
	Xk89npNzr8HOt0bASaBXcmNU3prr501/RE1lDyPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657352812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQlLQhT315KyYNFjujKQiAEF306iXu8bDfJXs6ePmPI=;
	b=Nftcm7ejAftRrY2qHDvDCJ3SlzPGRT9jLletUbTIFKUs8Wzkm0bzYqX62VunmELa
	8EE8t6a0Lsx0rrCZspKyrOzlHXqSe0mvXteWtEg1EdGDHMm4gU6F/h652npJXi8Qnoh
	10y9ooQO6u+zVgaD2fyn3zrnKGcCQGYfnaoUpn5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1ecf717-5d4b9feb-f030-4d17-81f5-649f4897d328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bff34aa2e7a54f9f0021e90142476987125dd1ce2578c60fa35a366e7541469
Date: Sat, 9 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657352812
