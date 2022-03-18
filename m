Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C0A7A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647578785;
	h=To:Subject:From:Message-Id:Date;
	bh=2U7hv6RDDjygxlGM7m009hDpwFuD+8KAwhlDCex0lXg=;
	b=Lt37vJuGIOJvBMCQJQVZQJeDMp9kEJEibGS6gbrPsKUNM0wZS5nKvk/gQu17xZS1
	ldVeateQsrhv8P61LI0avymAM/V67E4bYzvpJW0oeMXVcVkg+Y7SbRyeKQpCwpKUZX/
	T+y4uyhzN0XmHFbLsLDww1xcwiHKa8QbtmZmAHbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647578785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2U7hv6RDDjygxlGM7m009hDpwFuD+8KAwhlDCex0lXg=;
	b=TRIgaiLtWKq1GKzEzObtMqAmlDTc9Nz9MeLmGB/eqc0jST5jEtWiW2kTIrPLv/Yu
	qTsXmEyO9kAGORJyx0x+nHiNidNzTEQS3epvIzhuOG74qx1rJquR3B6u3eYc4Hz5a3g
	xlJS9DorbiwOWrdk6veehZcEQacXPZCepMMTWNRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b5924a6-1639be36-6256-4208-9678-3580e7bc22a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e85a938b88bc8c2d6fefa42fbb6a1b0e35d704e7bf9b507c7f3f0988facac08c
Date: Fri, 18 Mar 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647578784
