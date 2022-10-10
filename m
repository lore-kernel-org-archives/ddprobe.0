Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C891A5C84
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C3BC43146
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665432653;
	bh=tVdobcRUaRFrcwDDi48MvAJ48ot6zDehegS23Qq75u0=;
	h=To:Subject:From:Date:From;
	b=W79CslGwE1Clr4uzzgSbpgfWQqLbAO64mtNCJ1FFdXRmcTNSJ6DRtmdpYNbDroQx8
	 lVqtBRM9ckM4f6EORanimjyYstLly56uWvezKHj8FjpWd5kNoyDXdbZkS1DwxV0m+b
	 4OdnX1t22cDLAIFdzQ3XRtU5wVav/YJoLZMf8gK7xwP51BfcaDfxSru0lc+BEC/+Tn
	 R7xC3pJYSIZHtvZ1PFxTIuMf7hE9dTfCCMJP69eqQJkIGTd4dDpgPxtiTfRVGBwgWf
	 MseiKv9HupYbQ40eTn410nMY9UArvCOXh7x5xonbKyxvEPdMwt1MSufh/c++Ua4Xnc
	 t9UcrL7mhodrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B098C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543265336.24207.9438054887860613979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309e3a05c314688e751c11ea57c31a68c97e84b62a7014e98cdae17614694a19
Date: Mon, 10 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665432653
