Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755057B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660798252;
	h=To:Subject:From:Message-Id:Date;
	bh=h9S+BwYtn2Kscwcm1tqZKIdwqH9wWtwrQ3a+FfTr9pw=;
	b=YNpkJOpIdCmEO1Ilkq8w8ETBF3Pz/X/CZFXXkX8zmUzEvwC702kUBRIKUvP8GMZT
	yS/jZMYuCQvHuSADdQoct33F9+jkLiz2DX5j2WF301op3613Ny9WnlIXoX8PB1ONAhu
	iT/VQxiETvhPzog+MhfUFvRzYZW2Flpk9YPL/W2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660798252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h9S+BwYtn2Kscwcm1tqZKIdwqH9wWtwrQ3a+FfTr9pw=;
	b=iAbM7tAi4V/wbinleoimo7zdNhhwoNxg7gofp1lUovc2pkyGMHNfEvLGkon4oNKL
	dJCVQwiuqLp30879ry0O81Kpb+IkVB8u6N9nbW9K5sh4AYwguxDgDyIfWYJWN5hSikl
	D3rpidaLAuzbt5MMEn4Wsty3tLcmz5FvWNSQmCzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af4a3678-11c0c9ba-3e34-4b7d-9363-4e79be56de08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 761639ac8e964f0cc983f4499b4bf05316289c93c833bf439743adda61655cd0
Date: Thu, 18 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660798252
