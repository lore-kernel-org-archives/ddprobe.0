Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BBF7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658562412;
	h=To:Subject:From:Message-Id:Date;
	bh=Cz4oHU0stkr1gHlY0vj8eD0cfVOLV6kHg/riayVLa4s=;
	b=g2Nf9i2yvyhV3IUTyssR3/NHrn5aZgXF/1vlQawXLD7surgEMvUssT3PeBAKz2nF
	knNToMnfCqrnHHnYVAL/1ktsfRDyk1YZNU4OXYn3e5mmiOeo5C+841OF2wgZCfydRSb
	P+PV2alc1aYNul0knhvS9aTRpkuZNdRwG5XUzGKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658562412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cz4oHU0stkr1gHlY0vj8eD0cfVOLV6kHg/riayVLa4s=;
	b=aXVCwaZWc/P7hWZyPFaKiP9+dZ/S23qfy/hByfY3u7JVQfl1PQ5bAabPzNHSZR3W
	ubAwPvcBeSs5gxU5XyYMHZxEiXpo4Mz2QQp+QHAveF5ccPiIl/Nd6MNH+ZK2Nl3uvVH
	1F91zhNIdMn5Ey2sjJm+BiAMZz2CnYbsuRR0BWX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a05fed4-b08197d3-41c7-4772-b3cb-d85d47a1c67f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e700cf5a8bb83b26bf75985c5ef5b4ac991b95e14d286d83fa8e7f31379e4c91
Date: Sat, 23 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658562412
