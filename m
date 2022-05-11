Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9012F43
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 16:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652286479;
	h=To:Subject:From:Message-Id:Date;
	bh=yCAxFfPJKMhZ6lU2Q8SpyUrbbgPSLAZwjK0DcjXLxZA=;
	b=QGPRULBhA0FX0b7mXjJRKdkrtK48RCHAgKrXaip8XMm34J7FVF+ZcZoT7d0shcZo
	b+Y5gCTwK+M+zPpHynJd6N7MA19kGltvW3XgLidiuGPMeApycyexB61Qk3kMp/AgfMz
	Dt4pmWYhcRB0JhAdlmUR5TC+TwMyvngUMxBmVPLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652286479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yCAxFfPJKMhZ6lU2Q8SpyUrbbgPSLAZwjK0DcjXLxZA=;
	b=HtDIJo2WhEwCJrMV23+7saaBVw42L8wXlCR71CowK5/tuRAPF/4tG8E4MYuF4YaE
	6w6rHTjwguFqk+ttpSHHo/MPCQPoUydU2eIWUz9x02ctCGAtc/nqHHjVnOPqin3GddV
	1THI2RRvakoSlrc2TfzEyDvlk725VxX1Z6bqeQ1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b3f2dbd5-b5cd1ce5-31cf-42d3-9d90-5de0ff609f8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9e34f78f6b4c4ad42277b57452cb63741631e6502403d16d3af678b570cef21
Date: Wed, 11 May 2022 16:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652286479
