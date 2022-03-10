Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6891A7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646872885;
	h=To:Subject:From:Message-Id:Date;
	bh=NUUwfIJx6u0y2hI6Md9BbmcDsB3WfhsLpBThe8kNo14=;
	b=CKUY+hZctDGq6Fud7clXFEOYzo8sFjns9rf4d7f4iGceqbad0bQZbXoHPGJASLBc
	n9lcp9SWEJUcT/v9bNW9mXIBgqyepx5pHlDa9Nzp/gmee2KKBGCN3DXxGIsKf2BIwLx
	c6trBXVi5QsUv2Ei8I+aJyM5RBetjpEWcT1+xgy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646872885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NUUwfIJx6u0y2hI6Md9BbmcDsB3WfhsLpBThe8kNo14=;
	b=VYK2HWc3v+EG4sWd/FMuRa2Or/byJ5HFBJNOKl50tWXbh7H9J3XdoSY9fTPHbHwd
	WVRdx75wPB9vtRK1G/KvZeI16CFMVrJbdSw8/pK1YKanFs385e/biu/Nze7Qi2LMAF3
	Vd6BGaBkaZOz/WqDb1zd8PFGTzcgMtUCpzd1wtLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7145f60b-cb279a1b-e6e6-41f8-982b-02296c15b48c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18e4e94d7cb3620cb6cff739b0fb6b2a22b00cc772c024c20759c7791d0e9257
Date: Thu, 10 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646872884
