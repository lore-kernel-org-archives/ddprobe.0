Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2D217FB
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 08:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649234878;
	h=To:Subject:From:Message-Id:Date;
	bh=EzdQnTAkS+6UhTXcKjWvfmqQNpha2Al8hjTXSwpd3b4=;
	b=VXo7PODADFnbqxvp3WpFyo9s8jXb+BTfKLU8c26kcJSeCSX271XK056sF4YNnytt
	PHV9OmFAOjbzh5gb8F9FsBr1cjxDnxhjdvEQ1G4bvZQNjWJL+XNVirxnDoC0zSFItGe
	HEu31qs2ch+RhqinX/zqDeXcZw6yDjZQ+2xopzSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649234878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EzdQnTAkS+6UhTXcKjWvfmqQNpha2Al8hjTXSwpd3b4=;
	b=Q0Tvmdd80QByKHiDvE2d76A9tFBP0ePhghk3+jopd2hkNOtGb0SvJSt3EedC54Fq
	GipIw3Zc+QKxg+baor980M2g/X652JpNpzmk6VuUTLDk+ahnX0NSyR7AlkUm9Dh7BOz
	qcWQiwieaVGakqdUvXABIx1IDiQb+tDnhR75H3RU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffe0f1f2b-0a35b9ff-d179-435e-88f0-43bb265d7631-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b68e7521109aebe1b7f33c8d48f866128bda3bbb4673516d7035087287fb2234
Date: Wed, 6 Apr 2022 08:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649234878
