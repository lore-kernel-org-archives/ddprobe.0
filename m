Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ADD7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 08:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651568038;
	h=To:Subject:From:Message-Id:Date;
	bh=Tam0t9XoWqYMmFYeDbReKvp8lLIAQyAFH+jD0zEJsO0=;
	b=T7CYYYoEieucG3gj3uK20z7H4BsfQO2aU3seRvL0sRkfAo61fs9yecbD6RXGqc3X
	zHMHYOkaJ8gjT/Go6L3E61GjZyjh/IOIIlO7DpuapXMX8e9VhboyrHnigYu2o+e8vu5
	SiLLRgIN1QwC7UrlsLOJ9R0T5qzkzbdGibMB4UPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651568038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tam0t9XoWqYMmFYeDbReKvp8lLIAQyAFH+jD0zEJsO0=;
	b=Kz+RY3SCKcdtOasFbyd2rUSbCZL8AIAaM+2lr60HAknW3zIp3ar6aQ/ZNQ9Dvqjk
	xnZuy6hSpRrM70q0hSadwhPlNJqLK3x10JWJGhPHCjpctIIPdHYwYfaXM4OEqfiwnR+
	zXnZjpqZZK9pYMBWwxvZBlvQc/tP022O+Ya0CoqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089205182-cb57312c-e2a2-4b3b-b4f2-77a0b9f2b8b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b51103bdfcd99d645b9a8407d6ea0e3d3678fc4a272ed46b4e29ea748fc7422a
Date: Tue, 3 May 2022 08:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651568038
