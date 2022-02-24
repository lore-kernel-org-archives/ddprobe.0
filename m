Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D701386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 08:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645690885;
	h=To:Subject:From:Message-Id:Date;
	bh=x0HDt+opdd200cnfOojBPC1Te7YCDnjM/thdqFDs/fk=;
	b=KPyFwtLTC5CSUj6NTIZKALHFUf/u/2jbYKbaapWEYJ70dwBwrQKIa/hBgTxxFRWn
	VDhCRYwz4zleksuA69FD/rD+vvrUfAg6U7jNSb2b+Fst9hwIJrxwXGKzjVi0dlrT7Ps
	TFFJCGp4IkPCjydgzrzobHw0j5ELtpseYscl9Uvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645690885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x0HDt+opdd200cnfOojBPC1Te7YCDnjM/thdqFDs/fk=;
	b=OsiGuG4DVA5b/DbQgHXCLfnEYlnNChFAQmQv93fKIJE9koQ+tK8bG4tA45Z3ZlAe
	2927rIinHNgPKd0wkgVvXPgsbA5rMEy0hbrjsMvSvfy5H5nVhVtyLXgQZhDeK35GTqZ
	JohfUakLv3UYLgJ+5pEuJ23JlW6/w77S6IplJpdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ad212a5-8596b8c6-18d7-4e8e-9bc2-0d1c3763d7fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e03dd0d8f994b0a6ba9a25de8d22b9f07220010c4814abc73836df3c66e0f9a
Date: Thu, 24 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645690884
