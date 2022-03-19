Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9138A18D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647653784;
	h=To:Subject:From:Message-Id:Date;
	bh=ccwp4OmLaYIDeUs+gimq5gsmmeqUU9xTD0j6Ml3Xsms=;
	b=bHwoz6rNvV4plmGP390lusX/Vt+HTKdBzVZvNoyn5qVfJ/cD0yPJPP82ZRFlLVPr
	knZBTv08iv+vx+ITkQixrMoKf/WVPZTgYLyMhBjqnI7w7ldTW7EYldbStwhfJkrwBl0
	AiqanggkpoQSRqsSSvA7qIq+6A/+QlTtXhq0fHfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647653784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ccwp4OmLaYIDeUs+gimq5gsmmeqUU9xTD0j6Ml3Xsms=;
	b=gy/MyAuxnC8SyulbSaZ7mjXpDVwkO+YYXJHalujIinNwoN5SkW+HMC4/V4PM6htZ
	noPefa4XWU6KxDigUJLJIBRmh0PxFOhucVcZisLTBw/MLVF5lqtygH0TIMQcN7vVDNe
	0fj/QRaUZcOrUg9Y6auSItNli+HUutsSQ645TpNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fd18cd7-a1b60f22-73ef-449f-aa36-7eaf8402d035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ae028068b56a42638376f2a795ded7c311e91ba295e964f4c3cb0725833c4eb
Date: Sat, 19 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647653784
