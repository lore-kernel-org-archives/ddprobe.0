Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506B1539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647679584;
	h=To:Subject:From:Message-Id:Date;
	bh=hFDMorv9ROz40jPbukza+7ri76leafi/C3i0ck/OXrg=;
	b=WTS1DDKihAp3R7xjmGTJYHVZa5J3t/fkE0NMG1sX6DGpQLXJme+LgbSTQjc2047r
	gcxRGaXvh4nYYIvq982RopPE8yiCGnGciz7NE1z7ZFOLxYLJCICKb5v2Ir+qZutd5oF
	kNrzjfFMbq38wS8cbEg/lkfAwLGEdH5l7zCbxmEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647679584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hFDMorv9ROz40jPbukza+7ri76leafi/C3i0ck/OXrg=;
	b=ciLyasRvbBzKV09k3gxugmgPM3UrkX7iQX+eRJrsREJEbf/3juqmtnc5A0ihsgdl
	pYlrIDhrKJOhasYOAwgd8bh8B62I1v6aC6+lpOU82kHHJNk2AiHvUY0kd8qKoVDJ2nR
	wMik55z9WJOXvw+CWZIr4i1Nf735xSfAgsmsNdP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa15b39ec-e46c622f-5640-437c-806e-df3a9bce05cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 972ded9936ff1114bcf0ed5d32569a6f54953ecb1886256a56bcdbed0b21af19
Date: Sat, 19 Mar 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647679584
