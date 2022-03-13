Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5317F7E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647179784;
	h=To:Subject:From:Message-Id:Date;
	bh=ECM22TgIvU+fMnlZYaxGKSqQ5Btp0v0VfEkKIU7m6ug=;
	b=gbzgDTI0xBd3iupw8xFI5ejFAQddF5WUqAVebvaS5RUfSpNuFMgTBdwJx3XUPiEH
	AmOcQ6G107wBs7fsDucGRAEDwJMFWOKnhJAZuo+inlYfOVfs6yjtvVJkIFSIMceL1jo
	GGmcbeU6zkEBvLZlLIqSYP+VwuzzXqVSLGkekx3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647179784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ECM22TgIvU+fMnlZYaxGKSqQ5Btp0v0VfEkKIU7m6ug=;
	b=dD5HYmMiyeQRD5nPiXMbAuk7OYudA4+TGtVMpYmgiiLzrUAJPfblcGxRGSTcCLnZ
	BgObgeCxd72noILzAYY26/VlKk2ibT/ep6L2iztE6JERxhnAMUCEND3YUn46Ebbrlm1
	L3BsI0vafCcDGFAS280DSQNz+W1eqMzeLa8X0G+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8390e214-62755113-9faf-41bf-a34a-128aacd9f649-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be75f02576b44d98ea6b38697b935b135e4484796b66d7fd4c72d7ae5307a278
Date: Sun, 13 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647179784
