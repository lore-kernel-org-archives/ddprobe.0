Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1947C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646739384;
	h=To:Subject:From:Message-Id:Date;
	bh=IReGY0DC03WxMK2dPczgI+XmtSYREJpXiyx+E/V71/Q=;
	b=MFsbgUDYhSxndoQfpfNJ9eriC4M9TE3BeUX9gkX0rg3QrKHhT9aMzsm6aJHzFpad
	fT6Zz58rAd7r/OvPJKHRf8NuyOnqP4KC8LD/qVNHbRQ/62EmO3laU2VajPuLjN3hw/4
	WtXVUWyrlyKYjBHaSC0FjIJ9/cTJCz0KMBNrSoVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646739384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IReGY0DC03WxMK2dPczgI+XmtSYREJpXiyx+E/V71/Q=;
	b=I5Zj4u1IpUnCzSCsgV1A/MnsKVTwCjgh0jX7fifzfmMvyLSjVCquRJFhM8XZhB55
	LDkwWBT0OOZ1UNbw3QG76EunGpxIRWcxKb84a0F0wYui4b0WSFC/t2SPV83gilyjS5i
	3pvBg0VwAa5+G89wkVUjDu7FthjpngSPt0os4l08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6950e985-27680e0c-fffc-4f72-86ed-d06a1db8dcce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aeeadcc254ecc29062ed949cb04d2e0f40ed2a703513f6fb8effafad628828ca
Date: Tue, 8 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646739384
