Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6664A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657744012;
	h=To:Subject:From:Message-Id:Date;
	bh=Bi6uH8xMm6jcEBg5FhsDUl1zMj7Ml42k+hw9YCUz3CU=;
	b=eskDHybfIUobzkMOPNRYPxGQ+OtK1WDr4BRsYrbmvO8l8YNvedQQs62ko70z+mN3
	GgPleRo1g6qJFRlCUqJdwJHqvzuj/e9x6w2CMpDakeUGI1Xz0HBCRSHlNdtccrZa7x8
	gFZnQ/maZSYWnjAGFpRdHUJWg1XqmFw3yadtesNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657744012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bi6uH8xMm6jcEBg5FhsDUl1zMj7Ml42k+hw9YCUz3CU=;
	b=fHsn9pAFUr+lGJIlTmBCRv21LNR0OJdypfXeLfRZfZzuOOx0tXHnNQVnJGoDkUWZ
	ihoVD85MMX6lpi+hffSn3UCbe3dNGgkCuskRAwwYO5HGM60ebv8pK8SRlk68koEYMZP
	OI+Y/aIuGThUFFwUfwajjW7iCygb7Q5Oph0uwfOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f93e33ec-fec80caf-00ad-473e-9abc-1c398bff1c0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab688c1038a888373b1f77a7ce1e302485f05798296616985482baf134314ba0
Date: Wed, 13 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657744012
