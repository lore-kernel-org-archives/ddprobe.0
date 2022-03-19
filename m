Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E19B7A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647657084;
	h=To:Subject:From:Message-Id:Date;
	bh=RYNWirqZZpff5rEuwr2mRGv5VsqPBjZMTOeRTlylsF4=;
	b=Mg7SetoLuIQmATs/V4ajomF5VscUiu+bPGBaxFLqzaHAsK9DIvaaTEqXh4O/k/Bb
	YKE4hSx245wj8e868xjIu6CFDay8lVK7hjO8mIGGMvKyKIKAwTAbxh/rnc737Og3KSx
	V4Y/X/a1J9xJIjW/492YuoJMLH8gAc2nXm/iF7Hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647657084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RYNWirqZZpff5rEuwr2mRGv5VsqPBjZMTOeRTlylsF4=;
	b=jRTeGjQanyd+9s9a756zwn+bkY0pfyvo4yYuDhPIvweT85qNP2EUf7CD7pH8kEVb
	C+j4gWzy4VKBvUdcU5nYuCDgl+ZzMeCfvEd4ikx0QhlVq9dW4PU9S5pDrUaFsf6Eyxw
	2+an74nkb3uJwlYs5n286TNWya8zOL/JYBNyL1wY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa003e74a-43b995d7-3a59-4ee3-ace6-9f2366c88dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 009c214611a72a2c410f1f1b4936ec9b48cc31d13caf827fbb8f1bb0bbb3bc7a
Date: Sat, 19 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647657084
