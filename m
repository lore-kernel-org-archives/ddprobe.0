Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE4A1364
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661126452;
	h=To:Subject:From:Message-Id:Date;
	bh=yW2zR3xBp0CJkvxUcCvk2vGc3jR8rAWI54eqG1/fdWI=;
	b=jo+rqPm/1YqeIZWyW05hlbu90P4ldoCHBsaar6eUYmXjmJjnqCWom9d8SMXf98Sy
	bcYfqqn0yXSXmAjTDZScfWI0rgcu/wb6f9PP3nf06sEK0PDm8HGNlYkgy/1GCpW6f5s
	gdf+uRucxcpyF6+oDlbttuFE8W/VCr3EbFZ0qFvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661126452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yW2zR3xBp0CJkvxUcCvk2vGc3jR8rAWI54eqG1/fdWI=;
	b=Lce8C10fpwfrmc/kGXuiuGAQTbyjKFMT7bLg/MxVTqZvbdgWw6CTFaUCwcLa+3my
	tdIDDBRfUpShohbJkV9HFfYoUbqauEHwXGa6IkU0fYchhhqSlN8Dg8uyCrEIsAKOTli
	6CT3r8ER5RDnB5C/OfXCAZ1y+XIgJAT/KX0IVmXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2da2538-44e5f92b-adfe-4c9d-9b20-965da0d4b9cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6a660b6c4e2ef7b044d2648d5b86b19b39dca211704ea6266e15d6bf1d58f83
Date: Mon, 22 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661126452
