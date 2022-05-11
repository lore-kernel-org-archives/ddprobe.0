Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2118F28F3
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 12:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652271299;
	h=To:Subject:From:Message-Id:Date;
	bh=gKivDeGPUVEG6ZqawYjO/vm+CJhUhmivFBtOx/gxAQM=;
	b=YC8+v0uhsBQsqvaUA0M12FZggcsV+ayJB3AdLBeip6Zt8hhgqz47AExPViD1ItZv
	RQngDoWZrt5/vwT6UVGt9shXkO/wwPCB3lBVFvt/dhyhswCsiOHNTnqiqqyBd+LgCow
	KApgxsjUzNGOthD4gbSpJVRzLRNa7cpsBqA/Zwtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652271299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gKivDeGPUVEG6ZqawYjO/vm+CJhUhmivFBtOx/gxAQM=;
	b=UuQo3CdlZFhz6kXZlVfA4m6B1uzhfv5kmRCSadwpD+s2mQgMhrHh6OZymwU4b5CQ
	lbpXo06pXajCaVJo1+G3vXZog/7A4azCc5kY7MJIUzX30Nw2pxGo5PEuS9fwGaXtSsE
	XZv/jw9uf657jyq8/j2gFMoOUtplQr/wVw2WDCk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b30b3ad5-34bf03f0-8248-4d1d-974e-f079de015703-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da49e4406b01d53277f009187420fe1fa7fc1d6635d6d8e689ce73706b2d0227
Date: Wed, 11 May 2022 12:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652271299
