Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA1D3201
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660222253;
	h=To:Subject:From:Message-Id:Date;
	bh=VkmhtcCzmKon5Woc4s7Y97ugRdc8csYbHcCcWg49GEA=;
	b=KXaiyXULVjQPQiQguO3eucjCFTEOg10Htynj+KxatKL85WV9TuVIrNwu/uxsKgzZ
	OODpOzrnWjo04ste8ArrXfPTNX8GdGzxIRE7vA96mjwNQmDV60iFSVAuVacrhVe/qy3
	Q8LftXmyW37Uz/KQqknmiY25VMt6YfHZzBd05NOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660222253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VkmhtcCzmKon5Woc4s7Y97ugRdc8csYbHcCcWg49GEA=;
	b=Zkgn5hTa/Gf2fVNDG1vMYg9thWTLTwYu7TrlLt4jEw541qduSDJIVrXOEBaYO9Sb
	0I7ddVQeLKh8aT1ujeT474IbcPexhQqPfE1VxHuWDTfLtlhyj710AmBz7PWaDfRvFGz
	X2x9JZn/dBQh707Yd4oMGFu/2SozXC01CPHd6W/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828cf5262a-ff923633-4018-4d75-93fa-e83de6aecf27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd5f6e33a887332ff582516812b273a4718438c63544ea3849d1eaea51b7edd0
Date: Thu, 11 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660222252
