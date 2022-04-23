Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6417A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 06:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650693658;
	h=To:Subject:From:Message-Id:Date;
	bh=BNqvBuOKdu0LYo/49tpuCWlsRq2hKmQjuEbs03WFNsI=;
	b=VKLbrgsDtIjutXOunw4LqXE7yAKkUe4Y9VdGN1mPv7UxiUggieZfgFL0gm9rHRyn
	fl/DPdsQMUbkwGwLxtA0L7wrjfy1qdIAQ11hRcKuRhBK59krFZSKByRl3jFuUEHlFrg
	RUZfbEwjgGMzlFpxwOR2u4LdGlIuvFG0MsFWTrjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650693658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BNqvBuOKdu0LYo/49tpuCWlsRq2hKmQjuEbs03WFNsI=;
	b=gaFmOB+Sf/hq8MMRDjN90YrJq3fQAnvmrvRzq8qXnPyuYi4fWjbqj7Mu/J8gQhX9
	7DfSlsAuxc+X6slSns4fiNCICQ2pRuUepgtJ3Py7U7EyY9eEQYcajFQKyRN+m6/4scI
	lTWdzV6S5jFfuuQIvvtHTfxE3ec3HxCiD+wzknaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180550256d7-3e152ad9-46b1-49e8-a35b-c57b97df6ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3035c1549a193d8b71fe09c6a72364f1ab366b7e537c6e22e85caadb9f9a55d
Date: Sat, 23 Apr 2022 06:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650693658
