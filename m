Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC5136C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 14:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648650658;
	h=To:Subject:From:Message-Id:Date;
	bh=tUJwo2e9+K9vA4xVXFqzfz2hukIbmPEoQLcbTY4bXYQ=;
	b=bqfw00Th6gg+zCuAYfii4DWD78QbZp9/VGpiGKkK/0oDwY9VRfKeU+IN/PwkCxe6
	HKxEYKHiu1Gg1froUOtfJWA1cE3JdqekEgFYOEjGX61MChk3YQ/h3iadvkZnkM392O2
	7ooNgR0381jRMmgnOF3ktFsxS2YNVPesHgMvjxQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648650658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tUJwo2e9+K9vA4xVXFqzfz2hukIbmPEoQLcbTY4bXYQ=;
	b=TPKaR3q0QebdXnxre6BGbiLqB2ts092J29KPhjSV7DzzYoCIm+XR7Ctf0fxchsBH
	piqKIHksUjdpD9IEKhX3FLr5D8aX6/BQ/EgSkLPxc/SMrceYbFJLQ2FG4+ZpzTDIRdN
	mRqfrRr/v4JGR6VvgYyc0ED5ipqPEMmdzBGReZ2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb3ca201-5a42b9b6-8ef3-4d68-b2d7-96f372b3e4a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 439f15dc1b26b11a63364c74d65f39dffaf06381004e33357e60a5e392c98e40
Date: Wed, 30 Mar 2022 14:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648650658
