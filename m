Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33BF7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 14:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648996378;
	h=To:Subject:From:Message-Id:Date;
	bh=jehmHpEqU/giYjMPtq2fXK5m5PuLIwbnGI2QdM0OZRc=;
	b=JPtmVr/CxAZKjUcZm9gHE8/FZxqVuct9IMJLB1MSqcfsbjbAlt4fuOyGoUkMiyTr
	HH9clHXSrtMDw7+TkgaC1L0QIbl2GX6S8a3p3gafM3zZNju3mdSIyZHQVQk4n9gurix
	Dr+vY8RUrgOCFdCpKHzASeIVNjYVSsVtDUvueALE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648996378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jehmHpEqU/giYjMPtq2fXK5m5PuLIwbnGI2QdM0OZRc=;
	b=R6bxGlNUnRw7OfMjjqzlCuTypLJq08FF8DceOk/RHkOD1YR3XusL3zrL245a+C/R
	lC03m+oEpwllq9mdkbglG97FWaCDifAzn2FtiTsSXR+O0sjCQIwBL1WopXF7LD3Ba0+
	dQ7LnlEG2EWr3QAoK2inUqUkrzNuHYT5OCLuWOBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fefd7e6d2-2f898fd8-962b-45d4-9e06-8a85fafa5188-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc264847bab976d36748cb7f51aaadce1b4b2b2bf60e2349ebae709791220688
Date: Sun, 3 Apr 2022 14:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648996378
