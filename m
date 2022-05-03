Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442E9322E
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651595218;
	h=To:Subject:From:Message-Id:Date;
	bh=+obMsW+DXrMZTk7sPX+2fuDm4MiLtNFE3ymfopwb9ww=;
	b=F3cYLpcwCLL5yrBOBfg/ruoAkrsQZbt68ywf/SaksB2yT9h9RIXwDd/lw+tPstkX
	GgUbzkYfUEarDYsNvYAp0MhSrQE+30Oscg8CIpggecNnpma285x/cs457GVrFTaIVpZ
	TwYPEW/EVADPiRGaM2vhA/skAOEjFX6NNeTygsdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651595218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+obMsW+DXrMZTk7sPX+2fuDm4MiLtNFE3ymfopwb9ww=;
	b=Y3lxVGs7/gTPjDcULqNWZ8P6eYtHRp/ZDDHhSdB6aRQmpk1EyfhzNWvKzk12uUY2
	LW5eslzMY7qPWTCmTEYbZ3lmYDr6yBTeZrhtRI5YZc3wBuwM1qmpstN0q6ZbQQHUgLN
	mZtnhUS4LtMmLbxbxMDdULlUuJtvlL9pIASF4mEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808abf0d76-b42c4a12-765d-4763-a9d7-c3d857556510-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7069db794259006c077650ba25051c90cf0501a886036c04ad75d54df599e97
Date: Tue, 3 May 2022 16:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651595218
