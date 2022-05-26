Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122627C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 12:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653566519;
	h=To:Subject:From:Message-Id:Date;
	bh=kA6d1Fgrf5Jjzz+OIaBCku6VQkjKTL46JcfNPKd45pQ=;
	b=WrB0Z5U/dTH9C02h5ZSZiIi6SUSY+0z5vz7JdNOnUTkvnAv1STV0ynSqohr1XbnT
	P45XhoejHxwqd2SO7qCt+8x7KluI9AIzW87cTzsZEcFS1th+CLyCRS0GQ1FJpE8KcKh
	Ir7ow/q0Gfdkg8+jNRJJo7rZHRVcXidOXc+Jux68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653566519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kA6d1Fgrf5Jjzz+OIaBCku6VQkjKTL46JcfNPKd45pQ=;
	b=E1NyGVqCIZ94dlYqwoiASbcK58VNWr5G58Pm7d5Y5Tg51muJUXY4Xa0YNe7+w5PT
	HiywkjrRby/GrLNWYSh0knqAbnJrPNF7Xss9qQ6ccSfewyTcLegQ3KzJv5SUq10tOdV
	qRuZ8xzqj3Qkxh+HmllicZYPYkgDNrCgP6+jl1qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181003eb7cf-98850a41-b422-425f-9670-804322af2d8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c86b65cc9cb7d3b0d747e1a256124c3442f5cfebbd93d02c8e6793b95a6ca46
Date: Thu, 26 May 2022 12:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653566519
