Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F107E136F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655892239;
	h=To:Subject:From:Message-Id:Date;
	bh=QPTtKrChFP2v7CYjqgJ33aavsv6DmufGEozheLa2vTU=;
	b=ZN/oh/JYdiyF+Tm8m15ry7yy+OgGH4d/xv4dHGYhAZSZVJFa1z+SfSaQPfKnpU1T
	aYBBH3LG89qxs3STvr6ZzVOFHAjMhIwyobj/g1GzQBN6N7bowDqG4kn/LCqH90QCcnl
	Om/yqodh3+Gn6mWqSwL3186F9ZT+pSaEhB3pBqz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655892239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QPTtKrChFP2v7CYjqgJ33aavsv6DmufGEozheLa2vTU=;
	b=NWr9AKGSITPKFrh3hzPaPFv1nqx2Ui5Gj9VBQ55F7j3zelVbp+SjVselYkLuulsz
	30FmRIREdXDa7X+/XxEu090G87hE2yulPwMebKQJ9Buj0TAOhTKAjPz7c4dEBlMMXod
	SvLTlGNFt9vwGM+5YCbaLBRQ1g/DY2iohW/ewlF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ade638a-64cc5ff9-7fa8-4ef3-8843-3b9c97ed232f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 657d5e4a7aeb3d45f2a37d6b6c357642bf83f56cc2f094f1e40b2e71d1280d31
Date: Wed, 22 Jun 2022 10:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655892239
