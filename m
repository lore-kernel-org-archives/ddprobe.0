Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C134187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645021884;
	h=To:Subject:From:Message-Id:Date;
	bh=iclVzBrbzQFDa49Q5S+/8v9xgJDN7o9OcHD6plXVcOc=;
	b=IgS+dSBXBLXS8fP43hleAXwiv0ftP+Vg0s7zKKUDdPcCW32xQ5Ge4wCXMVille7h
	pCcExEEolYEXDqGtfPI0EXfVTOH6umZNpnbHAsqcDcJx3OP7YYtCpRCvnjYWBvnosXo
	Go+B0VQKRuVD8jkmyj0gVeC26KSnYJiP66NkFhkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645021884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iclVzBrbzQFDa49Q5S+/8v9xgJDN7o9OcHD6plXVcOc=;
	b=RlpQyLk7VNyrFj1RyxQpbfaXs0RE5JA8Iv/fuBhzjDR8zGTNo9DPy99fLoIAuUOS
	YqPYpPBYWWfKX9OjkFPY3fD44qI49cmdk+wL8StH3Ye9MTznbo3KuaRWvJ24O3MTwri
	3njjhGUNzLaKzr5/G8ncI8xuQP3ntpEqOdC9yaY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02f1f152-14594692-1974-4735-a659-460f6f7a5cf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 551c7527577a046337c4dbac7ee2beb1281778b55deaac213e2d8aadf963d048
Date: Wed, 16 Feb 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645021884
