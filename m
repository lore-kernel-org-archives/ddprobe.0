Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B6310E1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645747284;
	h=To:Subject:From:Message-Id:Date;
	bh=FdkM4MZoiPT933ehpVCtiJL5OYyT4WVGqXoBNm7b5p0=;
	b=Mrr3uv/+Slbi28OXYVDq+brmTLItDvmZlVqGGjsTo3xun9t6lGX+jFdGAP3IowOi
	q3pkzVBbJlAPX4vfpW+Oya5AdKw2mLkm6PdGbzCn6Pf3Xb1ed/Vym4QQsM/7sF+TrUV
	iEeRxIAvcevY3650YH4F/2SXMby32JkexDMgaOZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645747284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FdkM4MZoiPT933ehpVCtiJL5OYyT4WVGqXoBNm7b5p0=;
	b=lpWoXEyK9svPP7WMTOPD7mncbPxFs33nvzgkJTseqeVB1LeTWXNwvhXLLkMW8tmK
	OIG4QIbHjKh54P0VAzBMecg8AETZ68s/zvIqUeUYkxB7iySLPnNKDfWguJgdlDmkL4f
	FU70D39FiMbT8hn3QxxTRxhJ0cFA66dU4ICAxVdk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e2eab30-cb57f430-2e1d-4fd0-8912-02eaefaef7f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50305c0ef8039a88109b65fb325699c7743f3fd8343e7b16466dda9358ace4b5
Date: Fri, 25 Feb 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645747284
