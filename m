Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD79C3D8F
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645103785;
	h=To:Subject:From:Message-Id:Date;
	bh=SSuF3tbqMb0zWgCTYwfyIu2pMaMrW97Uol5oTSPRyiM=;
	b=MOtDZfmkNgcooD9m6dP2vTCUJ3qa+JeCmNlDbyHz1CMH7RikNHJuNA/PljWADyXl
	RcSkWcjinnxjK5I5eciaj6hXcgKzWfxb6T8NGAgwl3B1ShTPLCnrHs+dw5sA2tm+QLn
	dY0e7G2xvVv7AK3+Yi5ql737+yScU7x+wtUa/fgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645103785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SSuF3tbqMb0zWgCTYwfyIu2pMaMrW97Uol5oTSPRyiM=;
	b=BgAEPHC6ZYmEYJx3HZs/ulQEfwp6lSkJyw7myUzWmmXg2or74T8REmral/mbV1i/
	tdvM6H5bQU1kvhY/+NUtxM5T51VACOcH9hGvYSmyV2d3Lfj60TqPAvGRa38E8NBl9dc
	9iXsE2z1E/XHdPD5fW1Efbqbdu/vA0x0rOGR6MWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07d3a369-a5579447-e9ce-43ed-ab25-8c0f4579f28c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e16914cf2d0a0cad3c4d5326ff42d42b52a6bcf09908f35851f301ad7cbbac2
Date: Thu, 17 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645103784
