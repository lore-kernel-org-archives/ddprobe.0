Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7EC5A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645348885;
	h=To:Subject:From:Message-Id:Date;
	bh=Weho8Fz6XYHKp/ziiRGisAq91WW1gnLEzxUcKL1maT4=;
	b=PTP+WVvW2HqLWlX0Z9j6Kko0cqhl3Yf/c3LjfSmb8RltkoPBgAUbwNWVIpZ6NDDY
	DPZoHx9LxpiWnaJBco/Ly6p+6w11lOYizWm/wFiXJY7FxgnKM2pWo5dEfU6EVGhoFYb
	hOfBYK5yZJ2xwjNGkqtlvmN2lJatXmKaFTx7qtQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645348885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Weho8Fz6XYHKp/ziiRGisAq91WW1gnLEzxUcKL1maT4=;
	b=WMDst8XuuptHV7xXWS8XWk+42VSZykSfyOtPUfkSB7i80gJp0a+biSyBAVVzTM06
	gPH7/UcPlFvIvewezfiZ0Q6jpJGxU6Pxcp2HORikHc83jbnQZ0dKM3LEFMfc/VILwqd
	5mDytPZsIVsxtHscvhfyaasv6g1/n2gvw27L66rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f166f91c6-1aac48d7-53c4-44b4-ba89-1e3d0ab78a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52ee3582ec94683c5b918800fa434b7928e1a32d62b195bc0caf7b4afbc6cd33
Date: Sun, 20 Feb 2022 09:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645348884
