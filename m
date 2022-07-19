Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ACF10FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658206612;
	h=To:Subject:From:Message-Id:Date;
	bh=LwV85GgTfKMboBpBNcegpDMi7LWH/s7aDpf1yGksA/s=;
	b=Zp3L/osOZVh0u3P4oLpZRhVeaV5aAeC+CoP5qHjXEZvkYbXehdumUlLomHm5vYGw
	4UCCg8FfXAdj7RNPZv+IFA9hDLZ/K5tujH+h/ItJ2ep1pKMj+2tkqXC9wvzYNgGUCup
	5t8Dhr6vTDrxrTwMtbk8AFSQmaXFOXk8IR7DoDVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658206612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LwV85GgTfKMboBpBNcegpDMi7LWH/s7aDpf1yGksA/s=;
	b=TOClhfjIsMIr7Fc9nVgAtoRAamGpjYczS6lvXmV6ZoKe9c/FtHq9dMeSqvL0UaHk
	PZLWdkJZ8HRV+DNOvlRg9Mk+w89jDSh5XJG/sBQq5WqjmxauGnAVr/woQHAXjmDzcCV
	rz3IurOGXJXFS/L+7EnjDrqoTLhevl6gu7nBTQzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214d0eb29-dcd67eab-bf99-450e-b399-6eab53cd5b11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e69d797986e315ba749f1ff701395100e1db8b7e5a38087a14d7dcce8d5bff2a
Date: Tue, 19 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658206612
