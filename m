Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DB318D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 16:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653927839;
	h=To:Subject:From:Message-Id:Date;
	bh=UAA0mNHlAbBrxlle+P9AJEDij5J8QIRQwjag9GCq0Ko=;
	b=TlJsdyR75T69tB0B8PRujmfLpOlLoZoZOh2OeUzekgB58x8ecvQTsGxL079E8XO4
	GdBjTovoOHto6dw3PhyLzl1bmDX0ZgaTKkd/D7eyZfKdhuyTzRLoSjGZAXiz2IlBuOx
	TlBop7JknGH3wzGuJrbq72SP0ohiuGH+oep2gU3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653927839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UAA0mNHlAbBrxlle+P9AJEDij5J8QIRQwjag9GCq0Ko=;
	b=fHwVBEwBSehyBHmtnmZVlyqH/6u9IQijeY8yxpjl0Be4IF1mpSRktaqeuuZ0Ym6F
	axFdJjOE4ICi72R0ZmwxZa/n6RDW6M7Q6Fdx3S4e6BpPi7wTaPmsAUzNrDvANLHATVG
	oLVtSD6gFbi7MFWNP5Ea2TdYPlZFtqd970oVo6WQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115c80644-883401b9-167c-4ff1-8300-0807e62cef3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a75d7a85173acd953b28c03c6f8b93c82a2056b4562e2d4c8a262acc6312ffdb
Date: Mon, 30 May 2022 16:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653927839
