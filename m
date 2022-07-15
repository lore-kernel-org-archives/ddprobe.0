Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BA0665F
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657862212;
	h=To:Subject:From:Message-Id:Date;
	bh=+gm6ZxHrRMurQ87GmqnPK24ydVQkyTmaZdEdSAfr0k0=;
	b=OsI2Hj0XEFw/mvxTfYLtpP6xAo9+0NJjEcDxXgp7Gk+7kuNQyzZeOmXieuiF5UbE
	Ns4M6gk/0r+hCcXrte4a2Sx2N7IyyJE6DZSCevOe3goBEZwRMVmEkpEEn0FAr1LabMz
	zctcRPE9ZUV1Kpi5mI/Nkd1dicKliwIGnUdNBj7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657862212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gm6ZxHrRMurQ87GmqnPK24ydVQkyTmaZdEdSAfr0k0=;
	b=h9q4E4GIVv41YbnquGnwH5+uAZPXelcZ+ksxPtyJjmTY96DOiFWiz0n0fKIVPZM5
	A7BfKwIc1C/859gMiA8QhwL3o76Bmu7v8+adysJQdDAq03HO1qkoCxuhKARGLoborJJ
	GeqPd3KZi464BQK4T/TAFQJvZc5feVtxj0rlcO6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820049caf1-46c142c2-25c0-40ee-9372-9d68d99c6f0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2af338d82519c5a9d5620e7f65b292fc51ee4d5e5bbb1e8fcd13ace432b705c
Date: Fri, 15 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657862212
