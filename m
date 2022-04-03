Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0177E1FDA
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 17:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649007118;
	h=To:Subject:From:Message-Id:Date;
	bh=ZV62KzDkvwMHhRWGvDMltQlvIdXX9m8j3/N42YGSipE=;
	b=epaT0JIb3YYdj+KnmHUYelzqf68MAkejN0OTzwrG3bPP02BvXn9qY5C0Izj9982X
	ADmhEFzgUWqNSWFMpukFND4P101s5eAyYrTg7STK+konrrxqajIFJ3s43s9WxxwBFCf
	O8tCKiOOliBJP31K8NhlPDQqZ10A3Z+zbL67uVME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649007118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZV62KzDkvwMHhRWGvDMltQlvIdXX9m8j3/N42YGSipE=;
	b=ZZ03dk4FQPSgiBikQVNm7c02UPdKZQ/AzAPid7TNbvjdtMZt38lwFUNbAaxTucdB
	pi1fMsD+yMQcxT1xUKQBlxL0SrCU7EfGkjdVhF0Tm9iEZ17LngHV6vSPJxG3GKIWK/S
	HJ5MCuXlTQAxzuGH6q1hM+Z67qSib62eGvFpEHWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff07bc7bf-80ee202d-001a-4602-a3d0-287ed8b7a6ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0667b197efe0fc430ca1914ef3b50f6644692abb5d1f80aa3db5fcb74ee3d72b
Date: Sun, 3 Apr 2022 17:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649007118
