Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E39652
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 04:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651035298;
	h=To:Subject:From:Message-Id:Date;
	bh=OoBiNUUsO4pGu6eJ35WX4pH42Akv0DIzPxVnZzwbl1Q=;
	b=ev7/Otbs7321wQmMZm1DsjYpOugfbdrZMY9PlHUftvMSLtCtS3LPd8mC9s59UMzQ
	JcU7mHlQMbfWf93UDZa+OZo6xAgJ8qiiYt90RH6VRKAhH2lTyxKFUW22nBJbqVCetGi
	GJhGSCURWkJrA3GQ7f94rJqV7C+B4CNSfTrvujiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651035298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OoBiNUUsO4pGu6eJ35WX4pH42Akv0DIzPxVnZzwbl1Q=;
	b=gYXZPaBqRKr2wOxcBuCpviCD1jZly3XKnBf3ALMGyDp7I0b2HRGiGlpfFDBLbBo+
	8prM7B4RBOuehTZSrWor5tHyddgZjipOaJE8KjVBeQrK0+xJlaOrG0fvxnSnp2B+Bym
	CwIypr7HnM18JIk5i40lzgM9eHiOOi8CZr2PHpPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180695f5a2b-5a442275-a1c1-4dd5-85af-3e2e8323eec4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a2caae1f909c9e99d85507e0428a681defda2f1233f7d29e9b3be94cbe900c9
Date: Wed, 27 Apr 2022 04:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651035298
