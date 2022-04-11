Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB411849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 14:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649686438;
	h=To:Subject:From:Message-Id:Date;
	bh=tETLJmPAEGqKLZ56u9nbrFLmtqerMymwW8VvmB76oB4=;
	b=TULuMDENL8AFu30LskhBU8IJ5EeHYjKcAyLG4NPAIUiDDyVfnzW1UUcFlgGeKLKe
	qSSpP0V/BoAHaAS1tfomH8MqlLHWHAP0PABHWnvOypbTT3EXTWg71TPAojD1OcJqCpI
	Qgw62J28CFtVAEFIaGUZhbkXzSodnl0PZ3n/thIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649686438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tETLJmPAEGqKLZ56u9nbrFLmtqerMymwW8VvmB76oB4=;
	b=H4Dj+eFSBYFFT8uCoj+pZV/MxuDDXs8Tj+WiN69FWQxJ8hjI8SQLcT6E2Qr9G0Bv
	Il2voZq+2OCqcfGtTFlZY+PF/bl0LGpex2T3Vi8P4rK6/yaBbLu+pYIfds9m2kJd8XL
	ZvbEQ7X36pyjBGqJhX8RN1CnsLxh93JRWSWKcPTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018018f961a4-e5a0142c-2696-4294-89d6-d295c43c8d39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69aa0f4eb6aa4956b9bfb1dd329ea3fa6d5f60737f38bb1aa239bb335cd2f3b1
Date: Mon, 11 Apr 2022 14:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649686438
