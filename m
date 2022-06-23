Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0093443E8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655995012;
	h=To:Subject:From:Message-Id:Date;
	bh=Fmg2pwUsrp2S42kSS5Y6r05ifcD3OmqyI0ohSqVVpsU=;
	b=lV2I07+aftdtdHJ3gPRubmi4luMMpP+zSo6w3tGeFY4qRV7EQ6UhhujG1ECZX0DY
	CtoZmoytP2USa+VlfTHMuEt2m6z6p+q0WWKW97uUapIMmAiuossx1/GVt8x2RQ32CEX
	lrl+pS6QxU3y9ZQ9q9lOyXbMQhsPCcEVURP3WgO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655995012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fmg2pwUsrp2S42kSS5Y6r05ifcD3OmqyI0ohSqVVpsU=;
	b=VvR6muBHV5GrJnVCLIZA7HgrUR7S4NTigNasjyEAekLXkR3punomk4rQY/OjYXrK
	RTzRecOrJGBIgTv0lU6YIDNA3zcqRpDHxQ1f1enWMtGq7RQnkPUcA/dH8soicB3ZWw8
	ZhAXXkK1bfv0VQNOrXEBObAxzWxg+OMGzJt5BC7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190fe94d5-f95d1d70-4c4d-4699-b4a5-4580150cef81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6bc8ec5292e91e907eaa975c10ac71438fc614031a870f890350fd94c1d34cc
Date: Thu, 23 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655995012
