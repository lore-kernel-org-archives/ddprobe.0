Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871526144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647898585;
	h=To:Subject:From:Message-Id:Date;
	bh=/fvh/exFSNjl52497dp+3k67jDCv6YkcXmaB227VxII=;
	b=fQaha+aWmv6vdO1l6hpROa2g+4J4LhkLy062rpLRuCNQ8OFrVPY//dDJN61Y3bsB
	Ao5Mvg5gnhtaL8DywVPsBtc7ynnSNcfXHNIGqw1Z7kzQpp0FVSGOMBAOplJ//4VdxqY
	Obhxn/mNCVSaVp3zyy0Gag9f0snoz9nV1GUfCrlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647898585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/fvh/exFSNjl52497dp+3k67jDCv6YkcXmaB227VxII=;
	b=O3dDCGtFFT1dG80SlAHeUhx3JY8gNigV02fzwyahF9ZPpIrdtKZJnuKTyzd4/tdO
	3kkmEWzBhpky8d+ddZkTLMfd3Wb3dGdNfq0AB/DU9obU0Hc2fpMX3dIm1aRLU5z/BFG
	IWdxluopTM/746NgX72R+P0imnlsxrxzLcEo2NaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae68e6ac-9f529f70-6307-4a83-ad4c-7c0084915f6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f1a71d1b392e936a038800661fcb3db83df45529a93bed08d8a73f349c3d056
Date: Mon, 21 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647898584
