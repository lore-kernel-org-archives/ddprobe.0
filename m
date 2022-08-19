Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F35F2C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660915252;
	h=To:Subject:From:Message-Id:Date;
	bh=NgGd6YBQT5Q4gjjO+2DT+Dpr1ZzjpHq9ykfMrVb3ZMA=;
	b=Do5dWV8ebNwppMKne9AGWp9sHk7lXh1Nor/Z+WSnem60B+Til6J7+g1ALYxNuQTr
	U15cpiJ5abH2QsmNhR06MUq78i9KiiwU22FwKryScEbFHM944b4eBxdKV4s3TIjFlBh
	4744acm0gpf/ZaX+Z6eE43DPTCq4j00t6tSNjJhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660915252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NgGd6YBQT5Q4gjjO+2DT+Dpr1ZzjpHq9ykfMrVb3ZMA=;
	b=YevNPnWL5dElZQ/Y9Qk99lxwkGJcJlpwnnJ3jLNiqefbh34grayf9o+qCwq42jrr
	AN03gWQJN2cA3uPKFFbNlnOdbthHyTZqeAuOmVpECli3FGBEz3uMSysIjTjviP56Bvx
	40f4VulwpoZcR/6R/3+4s38a7kKCpEsLtSw5IZbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6437d48-996d799c-6aa2-43f8-8b66-0f762026ad3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93a35b0eefabbc384f9c9bee61fedb7fc3e82af847ce90f643b2acadc31afe92
Date: Fri, 19 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660915252
