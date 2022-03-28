Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE9F17E9
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648453138;
	h=To:Subject:From:Message-Id:Date;
	bh=c15wpLmRE5s4S+gUcNR4KNqgnpcN2j8yM3mSRgGFzwM=;
	b=FtXtP2Iw5yuS8U3L8ttdvvRnSWlQktLXOdZuKTCAPQ9is+fmlGcN+IZtbjC4n8fo
	12aKwKONXAjeLQqldveHU+yPWoN09s9a11punJ+q7Awf56oLj9osGz6gyMaeFCAQUSR
	q+dqRAARE/Za3DRwOwrc69ukc0Kqt2dVFBT8BM8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648453138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c15wpLmRE5s4S+gUcNR4KNqgnpcN2j8yM3mSRgGFzwM=;
	b=X2tg3zYIxkiBR5ckji0bSqVe8bbQ90seVEKXcLzepTdOXEM5KWa13nc5ymmO0Kzg
	Y6UuUPEMCDY++c1HmHlTy3zI5Kp0SEpXVnd+YLH9lhxWnfTpddDvjwoFG9QlytZRHWK
	yjsile20+FWTqXtqZW4fbPcdT9JDuwfxkE7TzJq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf76b759-68d5b481-0898-480b-abb8-334936904f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be0514ecdd2337d7bac6e5f0e3feb107a114c5ce08392b03fb334e4a2e0530c4
Date: Mon, 28 Mar 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648453138
