Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7837B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 09:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652087998;
	h=To:Subject:From:Message-Id:Date;
	bh=reKjTdvyrrpjXojTjXKnaeseRgXQLgMfX5ddNjsXn+M=;
	b=J99m2phiDLI0YcKy70t8O1nt3e6ladIqFuiwHDGC8WqHzKyhA0F7owDqrRg5sC3f
	+SxQ5sRsgazRpjUNSnwnERiRz/jvK6hLjOzCrGsnJqpZDhGBT4QzT8q80BiSONkqFcF
	w+ld0R0NbZAT+Uml5Ibw8TNt4AirpYrE/Q8RqHBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652087998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=reKjTdvyrrpjXojTjXKnaeseRgXQLgMfX5ddNjsXn+M=;
	b=OzYHE2nK2glbICZg0uDqDEK537YXec/3KqY7iF6JCTbM51O2jo7Qg7yGnCp+GFCX
	X50wjdzkUvAiv+Zt0DJaT+nfQnXGeGDl/kBOcW13SXyIn6mQV+6+TvAZmf0ZRVUyP5A
	Cm6I8XGHDVmU8o/zzjCVOxqD0sDIMmeQXqTp3jiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a81e4738-5c37d652-be54-442c-b82b-bccb82389ee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 915a0f1f3ab0eb4ebccf0d106ce32075ca35ff2130231f6673bf1fd549e43524
Date: Mon, 9 May 2022 09:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652087998
