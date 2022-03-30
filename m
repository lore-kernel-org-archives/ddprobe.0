Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682147B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648654858;
	h=To:Subject:From:Message-Id:Date;
	bh=viHytqKK4lb0x8Sy+hr5pTcRBhR35l49IbpolcySaqY=;
	b=iXv9Z68YDp0GgAelLZOgLTcCUsHlt2Ec3QRBVYLcItZVxcoP/RFNU41MXz3v+NU5
	A8VL4QJaaDhtmZOBk4FfqRCaDHCzAxrkwCpMkqOCOhi48FnGPyqxCSOhIqX5QVONn6d
	wm4IYuNekPGQe0DZpx6fpbqE7R6Ved9M6OPrnYEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648654858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=viHytqKK4lb0x8Sy+hr5pTcRBhR35l49IbpolcySaqY=;
	b=kvs9A9Dglxg0JKXPFbVMVgpY5a8HlbYIIcw9mm7+rFf88oMpyzbm4qO1Lz0rVld7
	M5GNQN+kC+9ZFaEG3nnL6AnbG1gYS+lY6KlW68mBFTBF20Z7BLXD4ZbHIlAGgs1fm5m
	ipigw4vmZlzwlTYX/9JHPAu/Kn3k6BDhRwKRzZFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb7cb868-34a0e20d-8718-46ca-9d4f-18a3ac0fa3d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1337f85b83e4669293ec537f92b4bca3351925bd9dda576ce59aab802598cdf3
Date: Wed, 30 Mar 2022 15:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648654858
