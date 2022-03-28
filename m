Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD8818D
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648463638;
	h=To:Subject:From:Message-Id:Date;
	bh=ZGxg6eszbnmolYIucM0KyDN05s0zQjpzXGudbqSUhVk=;
	b=gnjz/OZnfQ7qPqOHIE6PKhpMUiV5IDDSDj2jrVxE4PXoL2b0MfYMELG48gvmBjwI
	L9It4wcO4XB35DjxsQGYu/kZplIZOoJzU4/Ah5EHh1EAlFYBZou/6EpC1FKCjCJiIIY
	Ux6J27oG3SZ23+tIRjOpcjVssJziY3dzp9yrU/mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648463638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZGxg6eszbnmolYIucM0KyDN05s0zQjpzXGudbqSUhVk=;
	b=c6fn+t7i2b57lrdQqtp11XIr/pk6SAyVtqaOzpauzAVh76UXONd/r/Gcl3Fy2/lw
	GZndk6OtSxQ8124hIPU/c4WPzwATu0A4Vus9/oP/f+WvQ2gs9IdLWbsSqmsjP5FUu0x
	9w23HBdDHRfr2NIDTvfVA1xNHQ94yaWbWEVhgZ5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd016ef94-50b95217-bd40-42de-b14b-9a76118bad99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cb9a000d39234d849402b88fa642b5c40d042d64cc41f4c90c42c21637f0a59
Date: Mon, 28 Mar 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648463638
