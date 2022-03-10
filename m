Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3E87A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646889084;
	h=To:Subject:From:Message-Id:Date;
	bh=EU8gBnkq631Y6f2eu+Dm6fnkNYJ90nt85/E2t3zbXok=;
	b=Ecp2Nvk3E6rTt8Ph4C14NYpwsAMcQ6Yqz0Ha4EeimK8G5v8CGFNjPSqGYNxfqrnO
	QSqYN6nrjRd6sGt+r/zQjessp3/QtEDS4hr0jCd1UdZO+m4Y4fnhkkEIOYuL/VcJrvS
	EsapIyEuNAQdN4OOCHsxcg1BlpyY7KKvVfxBHy8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646889084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EU8gBnkq631Y6f2eu+Dm6fnkNYJ90nt85/E2t3zbXok=;
	b=IoTh5Y2d+80fA1jXkLVSw8ruolVe8GUqMu5Gpd8F6F4xWNi/tZtGTzmmYh3sr9Fb
	P+6XIbAgkdMI4LWT0zeyO/pBsxPQoAJqPYuyLJkyrqSqmPx3RTTfXluVFsvYhpmGy/i
	hw3wzW/AqBYDfy9EyURcZ/yukY9IC4VTXinvbChU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f723d2746-ef03a987-8935-4fc4-8e64-b067e6eeae4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b508c8b9056f43551e6c286f4ee0641ed5a52117ecee374dcb1015d0ee20ab93
Date: Thu, 10 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646889084
