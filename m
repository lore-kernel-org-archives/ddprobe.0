Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF45C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646405784;
	h=To:Subject:From:Message-Id:Date;
	bh=qxADVD9rSBMlNe2+FGEeoOMKMhBtxCexuaaBkYPmcGU=;
	b=AmvHj4m1091xMDb+SNMqZzzwfOK/pyad9cmN3M0qUneDLlH1HC0CY7pJadTg7zFu
	Q+uFcYzouwQH2bGVaqaSP3ZxIwP0yCWD6SNV2Wl2o+qXX9W+V/WsyT7+d0ggddyZHDE
	iZvhluRa+lNRq+6cbuGhlCd9BnepGY2lnU5fODdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646405784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxADVD9rSBMlNe2+FGEeoOMKMhBtxCexuaaBkYPmcGU=;
	b=WmEtlNe0sNj6Ac6hJTJs3Q/XH3tw0kN2RiVcCuREKVv25vHe0XYYGhYK8r9PsF3v
	fYG3ikUgyuhcxp4J2MudlGwtJPz2QsFWCEAgd6IOru4toJkEyrVP5yrdyrXfJS4kBwW
	U9Mc4oOFEmwngf9bnUaAFat/AfX9k4gQHT90j4Ew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f556e94a0-8880f5e3-b844-4a3e-b509-ae0d54d2ed16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e232882a6c03858c39a3fe5ad6db81ead515a8a6babe5b221d1b7d62d3ae0247
Date: Fri, 4 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646405784
