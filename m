Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2661FA2
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650542878;
	h=To:Subject:From:Message-Id:Date;
	bh=TePmlLNyTm7af+AaLvvaNWRYNPEwbQuQcXARPvtj9E4=;
	b=CEJxs1AmRCch8dHQpSp5WHfGfLhbhRKocFiyJnNeVb7ANfljO378LjmOWSbgjJQY
	pU7YroZDVOaxzA1mGv6mOj5ft3Tp/ABSD3xxzMZEV2Yc3scw4ykPSA2MYhvdv6u7ECu
	XHA0wrBpP+LvgbC7hMB1/iAASxOl7eSQi2mziUS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650542878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TePmlLNyTm7af+AaLvvaNWRYNPEwbQuQcXARPvtj9E4=;
	b=j0gHqDpCpD2D0xdmFL2mf6KjwTtXiAkgFtywAlpQawwHHbWJh8CTop55HrkZ01He
	lyZh7yKInwt0jml0rtKyzy2Jg6ZC++PTtcqd15G0LgSSKicUnM3M7K7iCqlYuTJ9OnX
	/0TBGKPMUqWGnU+wPyVL2VaO7/1y14Of7bk9wvWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c059e6e-7170f90c-b40d-43cf-84be-412b90ff43c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd3cce8234440cb8056123f2d1b11d3f59e2aa0f6b6a7abf5506cc28ef54a9a7
Date: Thu, 21 Apr 2022 12:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650542878
