Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237847B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650969238;
	h=To:Subject:From:Message-Id:Date;
	bh=DefDapY8hsmer3MsYF4mmcosd7uK0ChWw7D2qRLPd+Y=;
	b=aamFPMQ1LMjs1DTmr29/+QQfKt1cPKe1F3nc5IvbWLsZGYUufu4sHrbdo/kRguPr
	X49sfVPizlQMAuwTi68KFb7sUTlnqOpwodEfn71x8yLPUbqlQXP7ecCtHU+WNr8Rpel
	S1DzJzjiVf6Rh6oY382EFVl/japNZW5JKqTKy01s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650969238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DefDapY8hsmer3MsYF4mmcosd7uK0ChWw7D2qRLPd+Y=;
	b=Mf8KvTqDqfnDLmqe9QdHWm/WQymbui9XbBq2xEO3YGL5NhSmouEjIN0oG9nFG1zT
	cVQDmv+zn/hUIE6V7OMhslQBt2KEdewpqWjSuY1RSyFmtUWz6ZghI7zBD5y+ZN6WtK0
	1wFgp1kBynaozprqkDEoBT02P6Y5hfw25yjpcmmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180656f5aeb-9bb21b33-329e-4afd-945c-67f7d688b798-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b0422eff3ae5c6e582048043a3b84bde6e12cd148c6907775344b0933b97794
Date: Tue, 26 Apr 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650969238
