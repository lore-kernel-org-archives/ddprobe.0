Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096FC7EF
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 07:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651046398;
	h=To:Subject:From:Message-Id:Date;
	bh=g+s+w5rIkS3+Z/Y3335dmm1ife2yrPnIEMDjc+p2jDw=;
	b=CDypnMrZ080uOtQx8Y2Fg1G1NRXqk9K/Y6BHrkqCjfkUzjP0ZJwH3f/8XRKhuH0u
	8WQUTkgWa8/Ret+IrCOii040ZtqK398ppJrTimcpr7hTv8gLVRcvWoM+CaLD+shvY24
	Hq29EykRWbgrTzaonPsXrlv2gu9QpOur8srhUAyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651046398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+s+w5rIkS3+Z/Y3335dmm1ife2yrPnIEMDjc+p2jDw=;
	b=ddJvRthzG1yyJfwLiWf1UtCXEC7z9oiZE0ouSCuDCnd+U+M9+WM5LVQEQ91Cu7/r
	3e8TcTcn6nxbyqQiBzrsy/l3VJr0Xk8f0jbfySxUvLMtn0j4Uo4ZsyWFnAO7ZyBomBV
	uMyOifcAIZYs8YG3At78vBrM4VCqx8OI0jVi9/2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a08b971-468534a5-6d6e-4a54-af93-b0059402d490-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0691f72fe520e97488805dc2e91b48e4c0d45542ddd0c503a86cd7ac406e70ab
Date: Wed, 27 Apr 2022 07:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651046398
