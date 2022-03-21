Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE146144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647898885;
	h=To:Subject:From:Message-Id:Date;
	bh=iRsyHwQrHEMrNT0H5Vnz/RL3qDFxKOP3rB3iRgOzp1s=;
	b=hndkIWMG83HrJcmOgVEhN+eEnfJtgtXQRHeDZ740FnBZuCyIrC2pa17oxxEolDQ6
	00rEK0orisP04cFoAMzwqiv5mvYKXgYsg9A3Usq+yvEm0uE1DJAEBcnEmv8JowoHY5T
	vqhRmOaKP7x1HdJD9sRx3Nl1pUEnz2YzaD9fEYNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647898885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRsyHwQrHEMrNT0H5Vnz/RL3qDFxKOP3rB3iRgOzp1s=;
	b=NCv4ZukJfytWCDGZsBeV/rvFw5IaAzCElIXEdMxOC7rgEABuVfTmodAwaS/c7uQg
	oxmnYO5wTyMKa7uV4ERUDs/EM4fEV0lrQvkd5TK/zRyVvhdiqhFwejZDP0TPFwuMzi7
	Hzb7pJUrahZY10JFuv2UTbsPMw/o20Chxq6gg9bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae6d7aca-27f3a414-ddf5-46c8-89f5-c7f48d2d1405-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 867a5b62b390809620e5cfc8e890be25316843ddec57152eea6e06ef25375b58
Date: Mon, 21 Mar 2022 21:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647898884
