Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEEC362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657178212;
	h=To:Subject:From:Message-Id:Date;
	bh=PY7juLzcj4Hj78B6iGWOomtM+CZLNjH9dQh/oAdEasY=;
	b=TM0jJtm386noAqIRuz0HPPZt9plTvVgCaGBHTSCR93cIkrXXCIMXZThffBjoRezm
	bWMh5Ytm9bYL4d/VUvUVL2yge+uEtP7blKBVjwShX0T4aj5py9Nk5u6ws+KoskrU8he
	Z4gGpjpbdWW004WnVSZPCccp8qaF34w95evB/4vk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657178212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PY7juLzcj4Hj78B6iGWOomtM+CZLNjH9dQh/oAdEasY=;
	b=V0MS23k8gPfJLviTObFHsOguCYItgJ40ro8VA8bjdz81YwBptzEkRlLJ04aF3J42
	/8ocMf5TPbKgUv8XshXwIBTeHDb2mrOo8iOj2u5hLtZtfPyczY2OqoAlgHrw34pY6Ph
	dnEfFlMsdsLYNE0d1RtPohsnV2Pp3blmEqcwfGrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d784c7e8-e9163c80-3677-4c52-a3c3-8e6336547584-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec27eacd0b5b136106de4a9fa48d16c07b6cacc84f2a366c7e80d78a60ba1999
Date: Thu, 7 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657178212
