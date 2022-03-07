Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C0738C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646640985;
	h=To:Subject:From:Message-Id:Date;
	bh=LF0zTzVuJVVJZFXyoopCgBOh6iNvlZuTDxoH5KWJIOg=;
	b=D+M77QfPPgayWyOGA+NeobaMA4zPo/re+TNvssqdsLyUuoQG/iemzUUbDOKHNFQl
	qWQnWG2/rnhAMJqKAdJO8HbJvFbPVAeL9t8Y22UBCYA4MJpISJGW12ppJG3+pxQQK7z
	F4d8acxS8qSh+xh+hntw3LIwUM5XkWDZq0pXVaMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646640985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LF0zTzVuJVVJZFXyoopCgBOh6iNvlZuTDxoH5KWJIOg=;
	b=OYg2pE3vJyMRElSTA0M0/UT7bU5VGwca1hnzCddd9z0WWr1j+p+J2k/6uGN7uNXF
	8ZfEE1JevFnC0dGXrzpzdo90w4j94utYtQhzdyS+OPx2l7fuM59kUffhZ5jbRSJ6ycx
	swGdiiZvfAzSWGa99m/Sf0K8IP7D4bjUWPPnJwrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f637372be-d6e680ed-2299-43e7-bda1-19849ff7e61b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66cd9aa583c87cbfe78a8a5e9284881de22e14cb2a88abdd74d44cf94d6659ec
Date: Mon, 7 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646640984
