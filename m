Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB7D136C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 12:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652789699;
	h=To:Subject:From:Message-Id:Date;
	bh=NMQ1g3vOjoUeURpYG5gYmnfReltNBPI4ioPNYHTRme8=;
	b=Vmsym+KgDhjbPd3pkCqf4eL7uN+zOQzgSoBU5OiQaXvLrHstQk5m+vD5XCVrB9AH
	jdQRYlh/AK4sz9j47LAszy5WjsAjacStpc0/+MTKqutPPxdP4xsS74Z0WuwNkn+C/wb
	kQS/MWS4UjHwjCDiRCVjCu+FNREsWL71Id5CNXbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652789699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NMQ1g3vOjoUeURpYG5gYmnfReltNBPI4ioPNYHTRme8=;
	b=FjzLzm1FRTuc+EztDhoM5VLV0bLPH2UJ7wFMVtcN3QwNgW2ngfVe3qFA/vaom4rP
	vewVrqcuTV4zYM3RgyPJuwwmqpgCqoYG2ZBU0BIBJOCAYJhfp5JHUEzkJLUlMql6as0
	y/ts++IJVB9IPsJ9McqLB/9dbxpvRaY4uL+YxRyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1f162b1-697f79dd-fc52-4701-86c1-5a3c66daf4f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c5d8325ee056e04f290e709b0b1dd872bd0e0f28d4475d57a3a45ba0e6a153b
Date: Tue, 17 May 2022 12:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652789699
