Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170D833C3
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 23:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653004199;
	h=To:Subject:From:Message-Id:Date;
	bh=SclI+qtp77rQyXuSn7tNo9swfl3bijiVNIBGpoZUdpM=;
	b=PUMHFhl8S7NLMU6COuujhkMOp1BnRWhsyR/rjcUhOf16gHfLTmAX+3a6Z7K3e12S
	U0NAcvzZfd74Bj9FiibWJBGdASbQbQNF9vvuZnUp9VaCdLunJSp/IHOQkBPmypKsDaZ
	E5JOKGUlUF7/bnOsdKzHRA+C9PoVjX7z47d1Gyn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653004199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SclI+qtp77rQyXuSn7tNo9swfl3bijiVNIBGpoZUdpM=;
	b=TocpxVMDc76pt9di14y3JG1AOAuWvnE/eeIvc8/mmYtsKQxqGmdWqLU4c1DuZ/jF
	4LF1qyk80zJqE26026U4ACEXyO+irFgwA0cy+T2WzlmhjiXn0RBSTLcU6Y4FCTMXGtK
	70jm/AdR86avcljBhw1Utwl2HvfHxFnsdkGYONLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180deba6579-95afe5cd-805e-4a4c-b5fb-1e627be560a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9afe41dc7e6776f8198fcd85b432dd309c17000ae23929b18383a746803d755
Date: Thu, 19 May 2022 23:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653004199
