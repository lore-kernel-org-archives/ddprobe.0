Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3FD2CA7
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656083812;
	h=To:Subject:From:Message-Id:Date;
	bh=OUn/3DOiBmQSZg5nHIKcyl1SmEZ6nHO5LksmjgaeV5c=;
	b=Fn5Bjah6eNl360jBAM8/muIG8w/FR+e9pp+c+9hEW8VftUC+H7q06/1Dmg8ao9Ow
	houwF+Y3I1OAY+Zbvo1Z7pUOx5LeI1GRz1tHGyWKKRSAqpQGnt3jrc1KGBMCDMqbS/N
	0MI6S4pCjGeULOzr+wEa0qPzKAmz7uGYRPABhC/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656083812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUn/3DOiBmQSZg5nHIKcyl1SmEZ6nHO5LksmjgaeV5c=;
	b=Q7MUvzvYq+G1crDaHj4G8ibkEPvoGw8RKNUZq+C8fYU8vHRx44V69nmafB0qPDS5
	vXMumY12R7n0u+ODCu2MN70+hGtrfQDcwB7W4NmfIN9Sl/OlUsgOVEea1fz63qDYJdD
	3fYxKLKs1enDYBhB8/D+UxyI/7bRuM5/GBfRgNlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196498f9e-b54553e1-7337-4b64-9d65-895c044413d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06ae1da9f13597be5fa5b62c4d5e3332381e3447a99320029258a7b3e0110f24
Date: Fri, 24 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656083812
