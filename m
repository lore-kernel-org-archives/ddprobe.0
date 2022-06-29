Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A966AA2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656535612;
	h=To:Subject:From:Message-Id:Date;
	bh=dtQbN7Q8wvNkijGdYztWViF7vf5v4q+mIi2G0/oTBUs=;
	b=kspdo+bh6c6Hx+w56ERbqPoj1lkqxJbZ/Iufz7J8GuHORbQG9+FTQXVMuI9plfbJ
	D9zPt19n65bcakrFdANU8RX/N4JJEkLZD+qgyt9ARCYaV1xI47ylgyu5Bp9sKPiSrO6
	p+X04qL+CclHDdD/UV+nfjYu9E3ek1ggDzPdP9Lw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656535612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtQbN7Q8wvNkijGdYztWViF7vf5v4q+mIi2G0/oTBUs=;
	b=FGjlGTA7LosqaSddAhhyITTXCkjHQiFq7vzY3UivmfY0PbW10rlDkm8GDFeXbz+N
	4VjN8WDGxnsv4mmPECGg0yOz9BDToqBdqe9Xq5YNxxDWZUBjOrSEdx6GmgY6daYzEDl
	MOwPuBd4FYOYuvqqdhWORfpdKryuy+DHoonKJpOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1377b74-ea15edee-165b-4790-8cd7-df3456b0822c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5efb03c153f7a5806d3a84d140635acafa0c7ac5f2878659873e9aaeaddc9965
Date: Wed, 29 Jun 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656535612
