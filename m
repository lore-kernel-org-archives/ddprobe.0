Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13472F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 11:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655466419;
	h=To:Subject:From:Message-Id:Date;
	bh=gckkts/1M5v2nbYH4gKPAp5vZZqaqReyMtCF7KKq6ik=;
	b=hFGsDzh6tZsWLeht3InOpGRgE2krHNwlmUNGkLVeseu+CDwYDzHP8ijRHStIF168
	HtCIE+C4BlElq6uMayM64rAzEA8uP1GztXh96ZOg0ZUPsa52gugeJWvynF3Rlz6fks4
	ltmfI5PH4zC+djxAUEqOBn3XKO2Ki6tiXuLNwzbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655466419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gckkts/1M5v2nbYH4gKPAp5vZZqaqReyMtCF7KKq6ik=;
	b=emSZ9z4TGNtQHryzxUk3K8cJlD5FM0jp28FKtnrNQBx/dqjWmdXPp4aUbm4thwq4
	VD6y78VMsR9d8DokrBexhHgDJDI7GwcIrpHKNSxTf3PYIwIOSgQqDzSfPK0kF00xjFU
	Y5HlMHZtPuSvvsSNqGPZVXvbTxh5oasT7oFLKyhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181717ce428-58ef3aef-d19a-481f-b5a3-79400e7af781-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfd81536604efcb69cc6f9dc372725367aacf4d9d5fde4f1f875b88172a37461
Date: Fri, 17 Jun 2022 11:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655466419
