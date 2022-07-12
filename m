Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3283723A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657606012;
	h=To:Subject:From:Message-Id:Date;
	bh=A53vabWB/8HdwytkiEp988oKGbKaLN9YrlOWGD1zmtU=;
	b=DDPWkZTtF7VS2EQA7UmgkKsyUY6YN6g5v52K0WImpO1WiwWP6mbAIzZVVt+bo4rA
	MeuGulzLIzH9InLyng+XhEGEt/0hWYvSSywjGGwPbnH+WoqWIGg+brceXYcYC6KsPzp
	xcf6rm2ksJz5ZG5vRKQUMwytl9L+A8X7+s7bT3Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657606012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A53vabWB/8HdwytkiEp988oKGbKaLN9YrlOWGD1zmtU=;
	b=KMVZ2bjdplOQpul6iLOZ/i7VYzECBXi8BrEYroNnKYViwLQ9m4dDfGIFwsFg63dP
	XwXawN77XmT53HxsCC+A7CIbOhu2XWpEagNdE38Bdw6MuSNKNIT3Fuk+x28x9EVdkOE
	vP93Uc1Kohw7LJ9qhCm5VtcvboIQBH/vD/aTKVzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1047d57-aab8ca55-3c42-4f92-9470-5311d8c777fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfa6e129d518d05f60c7d7ecde578bdfbfdbb39e99983bf52c0888afd4a22610
Date: Tue, 12 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657606012
