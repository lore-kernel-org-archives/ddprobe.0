Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F964414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657641412;
	h=To:Subject:From:Message-Id:Date;
	bh=zBVo5XUGvNoVRZRmYaNtNWKkiXVmhPatY9j4spf5w1k=;
	b=WujdxmcLJi5cABdLEfOsny9DXr33Ld46z9LJ3oA296RuvY3GHjfEfo8IJ4lzzdQo
	q5xkGiINSsiJJxWBNMp8j8/FLOlw2owcMhhGR7BPDRQOPoDEnyyK+zz1n+HJitTCOIi
	Vw6UWc4Y8Ge0JHT6csKsZLiiHBlayo7zHc3kYiAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657641412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBVo5XUGvNoVRZRmYaNtNWKkiXVmhPatY9j4spf5w1k=;
	b=fhmSdrh6QwIr1zlxSVgeJwG1EgD8k+q9M+g1YjfDydsHDzyt1TEVvaTnlPUBHbjh
	bE4NS/HfGeBxE30JvGZk3y82vUleWrYoimmQiMVN+FE9RY5mCtCsKdfkIZokQG5QMCF
	EZK1pT6i+JxiC+0i1lvoGXNduuADlqt73SnlQrxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f320a6ce-67951e43-9b15-48bd-b569-7f2e68306d4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51ee304c8b5b340882a460eb10ca8f15c28f73c2e29c7ef7f4b8d68d88e6761c
Date: Tue, 12 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657641412
