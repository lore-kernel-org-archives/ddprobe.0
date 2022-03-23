Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79622A3D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648026085;
	h=To:Subject:From:Message-Id:Date;
	bh=kgOHSNMdYAeabQGoL9+tb9qZ7uhc1GdTgo7qAdyqtI8=;
	b=NJ9RPXfKisupp+K3uoiyPXGSo6zRd8d4FOnEjfWlt4qD0PF/hEnoC40Yzh8c8DAX
	7IjXfzNwuVMWRGIeyDQw67NkWF6y4xeGEzgZ1E27nYRyse5apIKIef5Hoj0jZyd9mOB
	M+EZLLWUnKq0sJ1GcPjprexeS6W5cmyjDygKs6N8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648026085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kgOHSNMdYAeabQGoL9+tb9qZ7uhc1GdTgo7qAdyqtI8=;
	b=i8lkUjSwmcZKIsWULEcJoKAofoF9mzfu4Z1b9L88ChFhBFoGmtrKQP1Eij5a9//C
	mvrNKbpMdSiO0H3a7nN6nCIBIe5I0jV9UqS3H9XPJuE6r9AZxagZdQwOBVvXs4VRor6
	UMxuNKOKrpT0m+peZYkOiB+4WUyLz9VdJ6dowzZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6026588-b4adb16b-a90a-49bc-a2a3-814139ff60c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69305d665be5d97d6b86fef980c79047b2aae67d73052197491256c6600a3978
Date: Wed, 23 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648026084
