Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5967A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 20:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650487078;
	h=To:Subject:From:Message-Id:Date;
	bh=ZwMztP6RQ96CvstL5JwlccX8swhACgAnEtFHNc+UzOE=;
	b=PxYEvbQiI9GjkwjiF60h4txnOVFgW2bngwgLLeBz49kiHflCxBlotL/C70F7X2j4
	HSZO1SCXkQ/UbKyOc1L+4L9/jru+bfO0AeO4tmjFnenZMKHPKrIgVKl40m7TVetODXY
	UV3g7lbobn3TRF5MJ1HQ0x2ppuKhGxrDeEXPdBbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650487078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZwMztP6RQ96CvstL5JwlccX8swhACgAnEtFHNc+UzOE=;
	b=Y+Uup7L3R0je6GXH8sGP3wJZV77k+1Tc4A4l6+4/kg6anirJKGX9EmTb3l3AEHKt
	fow3nUBJZ8sjAwCsvd6gG/iXw2gLw3HVqZLZZdVeVmTBPA3N5BE8nD8Dc4f9oMmN+Lg
	og9O/uQI7zd6MVAP4kYhrAhsEtB28cTIFkYQpvZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048b22d86-1e3e3e04-91c0-4f8d-a049-da6b177e9d08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 342730d40b660de2128e877283d25a759e82be72f43c7793d419a1b3d47af2e4
Date: Wed, 20 Apr 2022 20:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650487078
