Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB72CEA9
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659004853;
	h=To:Subject:From:Message-Id:Date;
	bh=WZ4/z2gepFB1c+l/gMBb8oZkKf6iuMpihhxzpgb6y6Q=;
	b=i1TPDV92k+5rwIUeKjew/5BhyAqU60QFk8p8atC0sB01ujA03ICF34c5a3w3sZWA
	IoaYigkY7rLb7ukGuFrAqBSNJd8Y8bPgyxxTi/SArCZqunQ8+P+HjtmRI/TDdvepUDq
	9h2v37zhNhtDPN9hQgaAcxAdxdVS6NvgbFVG5y/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659004853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZ4/z2gepFB1c+l/gMBb8oZkKf6iuMpihhxzpgb6y6Q=;
	b=CiHgzscDe7XjFy/e5RxXTZ34JiyjH2JbVMfKl1Xb7JY5nZg/Tnu1dHupUfsKZ50J
	voerp1OBBYNrJgO7thztiI1yS4PBpFT1wtp+Z3xDVKTjqKp4oVOJXLH/EWT1IbROg8u
	ALMU+bbQ19Vj7fqzEja4gEXUQvqZ/MpkLuJw51+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244651932-05890bbe-d126-4264-a15d-4154deab4803-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56f9975a441c5f81ac22ebf69e5ff5a694d36fd613874d14bd6cb8e0e28e6623
Date: Thu, 28 Jul 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659004852
