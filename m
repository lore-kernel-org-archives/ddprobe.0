Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F070F3D79
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 23:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653347999;
	h=To:Subject:From:Message-Id:Date;
	bh=r0dIPLlJSftb4YWWC8/N+r76dkD/pEJQjLRSdz5anms=;
	b=k4JrMhSfWGJKYEfKlgGEFZlO0Cj5gT4LGHcJYxDQedjf7x4e0GuPiL+A1KSbRjbJ
	KKaQNkIZhyqRyV483YuC1F28y9e34XCwO+YGiJSDl5keAj7FIw36oG1dG1qYMkfWuy2
	XG+uI4jV7AvZl8hvIp43FB7Xr0Xqj2K0lFUV2mg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653347999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r0dIPLlJSftb4YWWC8/N+r76dkD/pEJQjLRSdz5anms=;
	b=N4iba/Fl7ohz4m940nZfH1D1smHe+Jk7Z8F/YlxKvzLORAsiMhmeJCILk+sXq8LC
	PkE/gUhdUu5QnXp7bMi48AHgsuSFyOLPJzGzgeO2ehxudwfqr7aSPNN46pSYEnYjWjt
	iblUyfgPI5G0iLkYu+Cbl5d4GYPbfMBb7DBRH5cg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3385e21-46660080-d022-4df7-96ea-68e2f7345e41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57f3a7dd2c99abc0c80d1e77a7671f5e5c90685979729f31627e89b196145e80
Date: Mon, 23 May 2022 23:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653347999
