Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239BA7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657450012;
	h=To:Subject:From:Message-Id:Date;
	bh=UGSv0WBGxwLK2YNAgoEjwbtKg5NKneDqij5NgvpECF8=;
	b=XgK7OfhPP6WaxsGRwS0BCTlz8fO6ZuUVRtLEh0HDqPnkpwZ26hb64AQk11kJJOH+
	zYKak+/XTlO17aQCZ8CzkneS6oQtdgVxicoAzRQn6kZeYlC1S8S2y9ocbLNJGPolwZL
	EW9oFCvyjb/jD4w5Bn/IpEotkcNPTJKxyFcXX78s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657450012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UGSv0WBGxwLK2YNAgoEjwbtKg5NKneDqij5NgvpECF8=;
	b=GfHr1s3Qmsf8MuJ4KqnoDSYthVHVcd2ROLqsP5ER+0XU2AA1+a9qHprJD7/02fyL
	mn2gz4SekM6p7L8JRJ7pf/JV9z4jpO36iF3GKK//SHFVY0jWe1lVk5g0wYOPW8eaHFR
	dCG0WQjS9gRhqj1OvTHYCrtxcxg2inrteQ7AZFb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7b81e79-6dd58cfd-7175-462e-b501-b93e6426a4fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10ef9db5af27596442f4b9ec02e71abf13a76ed9e9dea6c264c18d291a2eeddb
Date: Sun, 10 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657450012
