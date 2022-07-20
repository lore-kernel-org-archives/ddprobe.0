Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428647B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658283412;
	h=To:Subject:From:Message-Id:Date;
	bh=LurrS+p0qX3v8PIoGZzniyHgXOSnqz9lSMasU7bfWhc=;
	b=IFuGevzuJoIcswtX5arjAWGrAKNecEglrRuqBx5tqnqw+64LNOUHiZt9iwguSscs
	Rhxjy6yzrE4C6jvQRpC5zjLtzVB40M0aB+GN/URHfwUzIVBri+aNz/N861kgdXGUXTh
	XPYHQ2tNlxyds7UdAgYu+cWWDLeJ20RIrUcwqpyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658283412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LurrS+p0qX3v8PIoGZzniyHgXOSnqz9lSMasU7bfWhc=;
	b=NO1T7r8zHkQD4b96yXPVT/NBDDC8WWph7C9Iet61mzRdYp5QUYQ497gjpK/i9lbr
	mp7l8MsQPxtWaYlxit6/jT+a9ickHD/2d3RrEPwQzohv0uOdREHZVfN+QW9ByruJdPA
	ylts6uAc8jp+ZOY0iHbxJrEY4sMLvI4z4p8LCGwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821964cb8c-9d513666-a0a9-4f71-b603-54305b051af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84f449f08b925e8be96a28df005902109967ea2fe228ca4b1a69dfbd513d822a
Date: Wed, 20 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658283412
