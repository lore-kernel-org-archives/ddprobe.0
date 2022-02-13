Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80E7642
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 23:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644795624;
	h=To:Subject:From:Message-Id:Date;
	bh=B/M2gMUQFN8DGaltnFjV2WwmjVhjFuAgxuWnkTs66CY=;
	b=FnYK2qvpflQp1rX2gckge9Ge5J2rQiJY9ZfLp5PYoPnC8ZyrVbisCe9BGnuryUKW
	BYu/fr1X4ZD36rCQ1Ot44Nmcn8cy5o3xCKHNxIQdPAUd7ryKanO9KRl7xHTDQFi9bQ1
	A9Zz3SuSmiMAYt8u/0800ep650o6JOgCXEoKMjdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644795624;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B/M2gMUQFN8DGaltnFjV2WwmjVhjFuAgxuWnkTs66CY=;
	b=aa6CdXj+APMdkd7uF74YiaBhDSSPgHyxs8OACG3pS/Irf+NBt7FZlYfBZYawRD9X
	G1Ame9uwkUDDS3m2cbUCfu3nyHMxHNSzGgCFmchmN4o/Ep0urWnZjxjPGgGvDXkf52W
	ldDgf+BHQ5BQfggiYJZIu/7DhlFH3DT/aR+ALheo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5757b7c-6f76d007-3f89-4bd1-b414-efe75d3e3c6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa10861c40244705e79cc1232ca27f3bb8186840b58ae6dc639576541ac99c85
Date: Sun, 13 Feb 2022 23:40:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644795623
