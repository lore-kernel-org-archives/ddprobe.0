Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A9A614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648058785;
	h=To:Subject:From:Message-Id:Date;
	bh=2olw6CH30HNnCtKgXcATzeZQIEU3BQ8HET6rUcZs3rg=;
	b=EXXvn1I0RWi2wrBwtOduWoq/W3fQNHyp8BOGty45CBaXVPuwMX19idFBZu5BZr1w
	3/+rQgc05FNsuT/g+kQ9Du1qr/b4RrYclNaSbqguUiZDn5FV5Gc+0mJtHBN/MtHG0nU
	jLZSk2bdjFAPTXLqdRfBWrCBwd9YhUvUiid6dDi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648058785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2olw6CH30HNnCtKgXcATzeZQIEU3BQ8HET6rUcZs3rg=;
	b=g+rCwQZ75CL0umq+X4wiE0w2BVQl4gN3yqDSK7hpj1Qc86IhH+HhfWfHmSPXdhKu
	aQzQbBB1l4EFcKjMbzCmNKBHNp3+s1EmHy5gMqy5GxGdarDV2vgTR5JcEmmD4NLRhXt
	FRPpzMwU8ATv/Vh6VfqUFB7xUR//kUXBtpyvDHZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7f55c12-a474aa25-3161-49eb-b3e6-66e5d0056e1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a00745c66aa9f4d93d570dfb120790fbe083f1aca91a66cd369659df968183b
Date: Wed, 23 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648058784
