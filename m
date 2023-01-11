Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0779328EB
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A92C433F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673443887;
	bh=FfvA+Va4Ma2EbteOEHUiABZyfR9f+SG3QZwj5aunTNA=;
	h=To:Subject:From:Date:From;
	b=KNSoCI14dsmXxgoD3/AGZsKxi1zASETgtpDxrx/hKrZzP9Ozae3qX7KxxzQ8qRIoH
	 N2KqMkRbW/Tyz7gsOBxuUofwnRvcvcLOakRy/H4EDTk3TE/Vi6j+wNHAoz0OeCvPJf
	 IDYbun1abdc/49sTS6xsKCQ//x+S4TGrANZnSvDu/IbuUqk6RW44ksN0lr07KLEqHR
	 +KOSiWMny1+3hyorsRgAG83RLRexqgVQ3YPpEc1AJhYAjoVzHgraGpY5cz1/3txF4L
	 q86G5Me/LSjYc3QvvNZUzRq7dKpgVmCvfM4z7NZHSVDIzF0GEnxzBqjC22EnyNnuU7
	 Jfyh9CgZLLQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A430C54EBC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167344388755.19254.13924625901206587549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598c38fcdc14d911acbeade7471e23e2fcdd1b90e14c4863157c8e09e23ee2db
Date: Wed, 11 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673443887
