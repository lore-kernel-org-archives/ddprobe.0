Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332A37B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660886452;
	h=To:Subject:From:Message-Id:Date;
	bh=9XNMIlgCX1zfAeSJKFOZOgeXSU6NlPGCxdBImPGKDHI=;
	b=NcH4Q5lgpVXgLQWEAXNGi0ZXGCBJ1e9UHiHsvwJncg2Ngp2ELpVN+eAwHoXQF9Ps
	5kTVcJnI8SVW/fXUwJsP/of+b9rx1Jo04m0O4/ktvdH2U2CrPhjRD/XRegrjTh1uDsM
	0NpX0fIt7r05a3kjVfGkp4YoRFQ2g3hddjGgMosw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660886452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9XNMIlgCX1zfAeSJKFOZOgeXSU6NlPGCxdBImPGKDHI=;
	b=Ks/GZRGAi9ZIF4i/jj4UdbGjkbeCqsFkNAt3n/VOCE7+Om6lVMOuyD7vPqAeorNc
	dTzRjRnLMAL1CXHElPejDMRwFJAWQwcsijDASUkZ/s6/3cznkYUoVWqV8CAGnQ58Gxl
	GWsBCoVUUlTqfife0Uz8/fke9yHzeRSlv1ElxD28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b48c0935-b1491f99-12b7-4185-b290-1d76c9f007f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e57ee9b7d2c7d52ec1283749641f616cf80c221349568624df4df8833eb5b8e
Date: Fri, 19 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660886452
