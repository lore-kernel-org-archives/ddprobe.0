Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4529DEDC
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 13:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651151818;
	h=To:Subject:From:Message-Id:Date;
	bh=a4rXU1kAGWSDURj32owjvPVRyCFQmouFGPby4EgHUJg=;
	b=bOBnauhGksbB0Sb1ZKLxU5WxCX9zlK9Pp3517Np21m0NfXf1s4Q+ypeoaKfhYmDm
	UAVTvyFD0gSBSIXaF5F1BFFOpHXsWp2QqDwa9y6EtCIJhQqchPhou4g+aFX8aN+E70k
	ZYnj/B5CmSOmY2jGRS09+tRdzzms5pyaK2Mh/qjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651151818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a4rXU1kAGWSDURj32owjvPVRyCFQmouFGPby4EgHUJg=;
	b=G7dTNUO0g7pdSij3uW4lLX9eP5SwlWvZ9Uk4ox/4F95MPJ8fG+v2YErwFUFzBsfw
	7ve3mUiXxW+RyFdVhD7z5ncdGomRBXO5XYYuo84FFwS6IR50TVcTq/JOOepG43R7ZMn
	pT1utjmzN8otkes9rOIkF5D9+1+qsNgPQtbg1/ys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018070514e18-fe77aa5e-98ba-4423-aeef-2e75dfd06660-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eacba31cf45718c1385678a73e913b67fc24157303b927eed0f3f7e9768fcd8f
Date: Thu, 28 Apr 2022 13:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651151818
