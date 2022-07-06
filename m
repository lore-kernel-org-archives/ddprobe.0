Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6287C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657133812;
	h=To:Subject:From:Message-Id:Date;
	bh=TEvOjdONp4CPRR2KMjmVsafw/+csQlDPkz+CfXyq2f8=;
	b=FclAhR0YmHDVICFw3JCmQSkPFAs2g0V00IKoPHEO2ikoh61st/k2N5eTrrrjE2Ie
	eWtfqL6O6HAZxmZT4zwl2MrmYRSe/+fBL6JCZ51Y9LQqykuYIiu+gKTjYKph/mA16B8
	wPvteBz4qOgdLOOGPlZde6mCyd/E0ndTtMBHD+wU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657133812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TEvOjdONp4CPRR2KMjmVsafw/+csQlDPkz+CfXyq2f8=;
	b=Djmn8WnKwP0NZi6A3akjG0YgoQ7a1z/qVUSSAaVLFnDJIo9crq2lKrxfFUV+OyBb
	oR/b3swDBrHoefw2tFDYEHjberlVghL1/fTOwvNz/ltb7RpADgB6mNe1CQcXdoTxdwz
	2XQQ8LVmn6ObMgG2W6lro33Uh9w6wbJzR4krZ7rQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4df4a28-a2f9aa1c-2017-4ed2-87b9-484d07b29f20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa206d1f0e5d7189795fecda210dea9fedd91dd0eb277050ed88b80f73fb5e9f
Date: Wed, 6 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657133812
