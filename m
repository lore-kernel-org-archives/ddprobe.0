Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C521B9E
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644974184;
	h=To:Subject:From:Message-Id:Date;
	bh=7CSW6Su3XdhETkAm+30wA79kXmiRYNGSg9PHU+YPA48=;
	b=JDvl9SJ5FQkAiatsgg0uiFNoLycaroH3G3HCSOCFwE/zEMtw0ToXf+UVP4eDozV4
	hDF6UlHs/53E37eozmZTKftZDnY6PWuZ9Yi3kFhWMsloXuQqMTwyiXPKQcglLKWu7mz
	wWB9uAoSTgwYFyEFNn9gltAIlNNhZkw5jiOGet9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644974184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7CSW6Su3XdhETkAm+30wA79kXmiRYNGSg9PHU+YPA48=;
	b=iqdVAdKJt0Qa4Cbm4kuQMcff4T3xbIW8/YFHTtIdkEhLruX1/RnY/6OWjew+7GH2
	EqXI8KIK18p3xH+8e+WcCC72frlCArqrw6mLyNLEhBiUDemNnEqiZvkSxCw8Hpm6HZT
	PdSrquaFAE2mJ1sYLjZZR7Kd2tNSnjuvXsgrPpmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f001a1925-23c7fe8c-8da3-444b-b4c6-61be3cdf33da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60b6b8ade1358e880dd2e722c37e747f45f3ba7e262f548af84b3fec3563b537
Date: Wed, 16 Feb 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644974184
