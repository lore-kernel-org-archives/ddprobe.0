Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDAA1FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647343584;
	h=To:Subject:From:Message-Id:Date;
	bh=gWo8m3gFtTyB+gA2oelOS+S9bFFnZNgamkm3/Da4mEY=;
	b=ApHRQq3dehSQ/aaHhGe002kWemv41HRpe/2J0GnGZWToPQbd56deTr57BWdF9CwK
	7f6Tjv7o7IsW1kHn1jV2M7ulc8PFgTy+/oyYrilcTz9UItrqvA+tX0PoVo3CbRw48Ly
	atRQc9TpPWoxIaZ/ygrBzFrjA4qnbKLhcEH9MIDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647343584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gWo8m3gFtTyB+gA2oelOS+S9bFFnZNgamkm3/Da4mEY=;
	b=iUwQmNs7TQ3DPaBPexS5H45aM0rnVy4USmp9D/nwk0V8rYDzou8nAweA1l5K05GX
	clWRN9LNVM0bf8uvS97Rc2FOcL7Oxc5oWtnrwD/2iIxYu9QFNeLJht1pbJ/kK5S1huw
	bkIRanYXwM9d4LKewJxBMD9TZv5MTFxF4IIsUZsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d5445e1-7cae4a63-3db8-4ad3-bfce-a77beca61d43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4caceae27a8550bd829f383301e982737b4374f5c68db8b2f00e08f7973fd1bf
Date: Tue, 15 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647343584
