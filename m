Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEF72F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646325084;
	h=To:Subject:From:Message-Id:Date;
	bh=IgUr8+KxUAe5N6WnrGMzjbauu8gGbwFYRLh0Aa4g4V4=;
	b=S2TIK1EUlIx6DS6B1fwnS7jEyCR3sbSpRqacEjsCwsJSQG+l4uDu/7hjC/Q3s83i
	F97BMIz/8XxTblOk1Pt8WKk4WKPZuPPf8JIM+4H6RtwcQXnD056C8I1c/Mi5/8UPWAe
	XVjcxkl8IkDKAVtR9rU6MtRrSVIuXejlMWopVxsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646325084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IgUr8+KxUAe5N6WnrGMzjbauu8gGbwFYRLh0Aa4g4V4=;
	b=bQM3xod17sZSEO6W0x62ypT5ygEyusG3MEU1YWI2e4UlCv3PTCApE3VOUqq9JntJ
	EzKKFfFmvJiSuxUnyqz+PkoU7tIG2vqNgsZIZGEswQWcLDeXkNDzzbTAaAR7pj2aSBl
	ogEUlOszaxOJR/HeYq8V013OloEIsfrkxiAbARGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f509f3238-06caebd5-bb82-4a2f-9689-060ab1406a7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f07a86c6451d9379597af74b3b3380309f700be4823bf6f3ffef00ff877ba8
Date: Thu, 3 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646325084
