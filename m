Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75513FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646022985;
	h=To:Subject:From:Message-Id:Date;
	bh=GVMVBDavwcum8RSNYneQMYig5ZwmzLKFpITNt9HmFRs=;
	b=FybATbT4PbyC4D9bOcgF/fMWDqu8V6r3REMilFWsaQnBhtuPEsUrx+WJULUegMB9
	I9GJP02dkXBlkNELsOq6/8LBho9D0asyCbytunO73YO5PGe3uH7ZbLpV1pGhqQO82ki
	MsDfcVWACJfl1GeCHaJDOg4iRujIVfiBwAmz538M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646022985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GVMVBDavwcum8RSNYneQMYig5ZwmzLKFpITNt9HmFRs=;
	b=ggHYtrBLJeUioEWSK4ir4Dub7ToPwagJiQs3vAuluEj8jAhrL0SJJ2ahUuDOIyOZ
	XFM+c1krEFkPOlkUGcHEzmhiSljKX5eYpZcSeUTp2NeBHB3XBPNMJFwsRs+gCmXAlfP
	C81E8APr31l5pPym9KDlDjj1U1fefSP82Uq6QLFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e9d8479-02a226fc-2ce0-431d-9f42-b9b46d856a63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c84b76981f91197af3b929aee48085dff64a44ed17528ae6c8ddb35f6385198d
Date: Mon, 28 Feb 2022 04:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646022984
