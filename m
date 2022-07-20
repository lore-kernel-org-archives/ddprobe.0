Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C9D1FD6
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658356612;
	h=To:Subject:From:Message-Id:Date;
	bh=v5GVS96TKA4gBQENvpNUKc5Klf7gvtYSLALjrDw0Fys=;
	b=B0ziaw8SITCxzAXGJuJ7pJ2/iFZ4/X2+6P1eqZRjJDa+ZM4f4r96Ac6szmqtXFEO
	Q+vJopiK2xR9mw12VTNlXjAihE59tn3r402NR+PE6uBsAsBBmdisFVYyae0GLo8YZOz
	jFq8D89NINxFRo/aO9JwxIN8gsb7bjDswXYme0bI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658356612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v5GVS96TKA4gBQENvpNUKc5Klf7gvtYSLALjrDw0Fys=;
	b=JNK5n62DdTAxp9T2tj0j2SZii1Q1myXt/9h1975mRnOnY4ipzVl5h3wr8NkYMstK
	kM7BnF0bWe6lRnYoo6AtVK6y7Vc9lOc5p3D9yiD5P6nU6Y2WxV0VWpLg9GDlSIvvIKT
	r7GazVL4LnB2QgW6YT2z9x7WvhEKtpxL8SaHwVFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821dc1bc9a-bdfc70fa-6b16-49b0-937a-5b8213d4cb5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac650aa04643874b3ab97aabac80ba7ae44baa8eac3cdf4636d5d6d04c7940c1
Date: Wed, 20 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658356612
