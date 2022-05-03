Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BFC7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 02:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651543498;
	h=To:Subject:From:Message-Id:Date;
	bh=u2lTJoFlKmJEhU5JxtZ9RSYLOg4JEMcsSofvwVuVbzs=;
	b=RgnF/teeiDkLhTulsGC27J0WqnO02bwImTyA35cVYIQiAT+2T/+1wLWvqlzuEyX1
	Bde9pmdBEcDOkZ0AdoZA8sG8cgqM/Gdd4PJJX3NTN2JudBURf7cZuJaETf80agl/CFX
	1eTJ/4eu2ldCCC3cjZnVVCZrIobTzXPXd0Ob1Q0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651543498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u2lTJoFlKmJEhU5JxtZ9RSYLOg4JEMcsSofvwVuVbzs=;
	b=cV0+0cpDGfMx3SqtGNMbUcgww9eKr7djDtGRLpzC1fUXe9sg6vaTaAuNt6fBUM5g
	Dm3adgZggStMbNSy9BdxiK+UeHNP69YeIDSfj/XTpFUAGomufkHq7dcF372051HcDGk
	ktiFMdiJq0qBAOIPD0x7M5OeAINNY98sRi4NrHyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087a9de2a-b5036af5-df6f-411d-aa9e-9797203df619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 970ec210cbf8a3f3208fbaeb640b8b05bb68bf1894eb52daf963da77b62f0fdf
Date: Tue, 3 May 2022 02:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651543498
