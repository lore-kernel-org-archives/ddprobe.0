Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F4D3232
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 13:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652362319;
	h=To:Subject:From:Message-Id:Date;
	bh=FD/b29aiKtvsvIG+ok4ZFp6OzMcjrNoChqWChik5Dgs=;
	b=QlYgl/I8jpP9WT5cEFEuDzorfq7ljRyV6TKZ6ZQ/1RNgXjYiUJmkdPCYOGWTlr7h
	ZLpAbPPms0G3EwMHLR7DIUz7hS+oc6uroLwF2BiGehvzXhG8DI3Lshn+kaMhc8iK7FT
	6Y1ED9ICWcCcgz8qRqUXXsbwPpM8XYi7s0mv9LIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652362319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FD/b29aiKtvsvIG+ok4ZFp6OzMcjrNoChqWChik5Dgs=;
	b=Ns7Hg8hykZJ9nT34SK47/H9GHmhbCMpPoPXA1boTOk3ykQbKS2Qk83IrqLpthB5y
	HLiI8wXjKj1wfh2H2PC0KLK73oj/zZsht1Xl4VLHYIifxWUQ2zPO5vGgq8uc/0tOdRv
	IqUk0IwcRd0qYJ3eannEpwP0VMX+ejfmPeNVrVCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b87815a5-90655e63-fc4e-4978-8744-299c0ea4bdc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b031040eb70aa046350655721bdf8d7b3d46489097992ce138bace051ee66479
Date: Thu, 12 May 2022 13:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652362319
