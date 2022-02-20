Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553487B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645373484;
	h=To:Subject:From:Message-Id:Date;
	bh=5gnEoWJ6PqyWZUsfVL4NoPrmDZdXGJQgcdGjGdfEsPM=;
	b=YjQEQh/OZtzNy92tH2YmkAW/QikcgtV1Oxjmo4H5OYBurdX62SOZRvJom8zLDnfR
	XT48Somr4fcv7kA5U1e7UmNWeyyJEs36wJgRBVsuqIAXNnvGcpnY7ZsxPjALWZVQyjv
	7Q8CsBbuJPPKhPbvhUVZ5IaVCZ3zIp5iJSNurxgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645373484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5gnEoWJ6PqyWZUsfVL4NoPrmDZdXGJQgcdGjGdfEsPM=;
	b=g1EkPC63RfJ1dUHmhWs0idQYUccQr+XuO0GEBPjpW9/yvyeOqX/NMoSq+3xCEf5W
	z0NafpNGRKrsFDtTDRtJpFqLqY07M3Aj4jDHXYIbY5uCIfAaDxvkXhprqFTt52kHgNr
	820htaZjfXf9daYVDIwrol1e9bNoBj6LWcDX7FCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17e6eec9-fc190b71-e24d-4697-b5b3-1726e6a0df0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b58dc63bc89268212fb8c757796f916b8289cda3cfa4e1748cda4da3d406425c
Date: Sun, 20 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645373484
