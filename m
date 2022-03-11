Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17DC7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646993185;
	h=To:Subject:From:Message-Id:Date;
	bh=3O+DkNGDacJzoxGqT1Vn0Z+jUFmyhEx7eJbeuPT3dyg=;
	b=Rf2fZCOytkBHuOvcO2xOA9vhlNJIg+oDv07aZNY3QwqbnDzQu+AXH34VtiZCwnxU
	7p6kKuvr6U7wSD9TfZDIIU3hgI0bPX77TWZTWxvFh5QnTqgLeKOTYD2FCchuJNbJ3a0
	+2BJHgnzl9GLbdxeXE2yTUedYG96UELHyQvArUC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646993185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3O+DkNGDacJzoxGqT1Vn0Z+jUFmyhEx7eJbeuPT3dyg=;
	b=DBTdC9OjluX1mz/aJZe+DyuEzgpdcV6KhZvSkP4sGFP44qE/DHvJlNTu3CPnFZdT
	iXoKOlDm7hvcDROih94XVVEeTwkJuUQaw8r0zp3I4oeUNNzeUOFS4nLoeSL60Ez0xLO
	O3hpUSW/STUOFyCWX9AfQ/Z0JYv4ZnBbr9mPMk7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78719805-e18eed09-4988-4fb2-8976-8f37e57cf857-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 933ff92d7fc3a026030fde98225e04d471527efaa070333641a016d3aec4e8ee
Date: Fri, 11 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646993184
