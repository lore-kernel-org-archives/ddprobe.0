Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB5117EC
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwXA5jGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13C6C433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696673828;
	bh=ib1IdKq/7xcQliWFJ9rPuiThAeR0wI3tESRYMa6ywFQ=;
	h=To:Subject:From:Date:From;
	b=JwXA5jGG08iNkpDuajKClKM20sRs3S+WJRA3TR9cx2gEEmNV01QTxrWhRWyI5TpQr
	 BL94p58vGR+AjSrczZ73QWmNhaAN4XC4PIkeReHte1x4hEwB4Rha0m1RlWbfvY1BUt
	 /D0PzhSagMjWWLtY3Krn/rsGs6ETkUuCS8T3NOsHpyb1NAsohSFp7n18RvRpEXKHuO
	 s589b7AveuNqQAOEPGJz1IQNBTvl4oHoYbGZ2ENmVId41fx692JhFmSw0gBkd6j8r8
	 a+G/VNVSWXBWROso0wRxdmMDWEj4If9QCm2LO82v+xyE/YaJPHu8b3CehRFVzu8bfq
	 qnJOiZmVHR0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B289CE95A60
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667382871.14386.3058773050732564310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca70789280cf3e6cc3fedf8fbbe7b18acb7e4c638c7957fe7c35f7ef26c05dc
Date: Sat, 07 Oct 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696673828
