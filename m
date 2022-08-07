Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4461852
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659879052;
	h=To:Subject:From:Message-Id:Date;
	bh=XjyR34sS/zfSjJHx4hPZNYLWVVBLBWE7ip7HgnzesM8=;
	b=a8XrPfJ7OeSlWZPm/kU0fjAVn3gKvadcc54kMs1qQEpdYUm2o1J5BeQqPxy2EoJu
	au1J8R0Xny3pPhhhQ6hBB3URepsZPusvmZJcZmVQufgA8S1Ihgm91NVBSC417hnbQ1X
	mn6a7cwGUpSZppso+w0fCHs5cYkT65w4JLrvr6Oc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659879052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XjyR34sS/zfSjJHx4hPZNYLWVVBLBWE7ip7HgnzesM8=;
	b=RWoSJvx4dSsGuuiejBzfaDt+qjsKu+B4Z7Kq4C4Q0lQp8RvBztJ5WsqR/efd+6Wg
	YRN0p3WYLU3Ul8rtjHs8OMt+RGKWx5c7tFdkbLAra7TyUpyf0iE76olkFwY/ybFOjsw
	g+FXHVOamNUYZRK4HREE0mLN5ZKWh73I892zFDRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182788054fb-789dbe7c-dc2b-4aa8-baec-267b3072e5a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b681198eb929027b463e93ece753adf48c97355690bd056d8a425cde9a00952
Date: Sun, 7 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659879052
