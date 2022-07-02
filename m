Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4DD3C1D
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656784012;
	h=To:Subject:From:Message-Id:Date;
	bh=+BSLLgsUnSUcX9rpFHBaoCdhZSzRsL1EJCdahu//CPM=;
	b=WZ23eE8ouNEOvx2mY754fECg2xP5cgIUTqRupMhiPLzho1yi3sTrEVjgDruPg084
	Ln5+QARfhzgK+D6I+xOW2mwSWsYH7PmvPJxvuG8QPB8BuqzXfZrwfLcS4pIHHBSOoFO
	pVWC39sKAHZm2OLK1WcAUe8kgEHMdASnoAhVWLCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656784012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+BSLLgsUnSUcX9rpFHBaoCdhZSzRsL1EJCdahu//CPM=;
	b=fFiwDuWdZDArlHDQPQXGv4T+5EdyqE7J48HwOZp3aqnvwe+8avySwAzfPqberUrD
	w+m0KdpYomSX3dDnZzKSjoHOQfyWiJWJeCQRYjAp3it+YW/jtwdAdcdLDsZoAKn+MRz
	yTRlKBE1hOVvy4BdOdg4RGQbvFAcDcO0yaXGNj9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c005c411-6eb3c574-5588-41e7-9ae8-f163567f5e4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d11cadbc11d665f67d3dcf4c98c762a30a5c866245f5bb1835f0f570d97530e3
Date: Sat, 2 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656784012
