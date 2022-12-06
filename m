Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4C220EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73894C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670304654;
	bh=wwkMxcv/KFGIYSoCx/qUfD3HX6hk+QUzYHoGnG/P4Ec=;
	h=To:Subject:From:Date:From;
	b=FowugnzYgA0qPlFXAKwUqM3TCqcFfl1jMMF2LUdoqOZYVD8fc/S3/oVpX/On8h5eP
	 EeflvMb6lQ0jnu0+fVTVWvWj3aal9NwxESi+GO2we/vBgk0/HeQC1jQvDZiGvy1Fez
	 qZIId1u9bYr8BQ9i8UfboRuAhhVpwDJdgLz1KGRWJ8FsSxrz2D6s6VNR/RYoS+w5p4
	 O7CWsih8dFJ99DoXtV4U2Yure8a4Vg07ZY4NGjfjHlrVubZeQhVphVNolxkOEBXQ1Y
	 zVFVmxA6zfzrmcmRJBKsaswXObYpZt0dXd98ysODTWpHF2V0vmGGqWV1e8zEEbnhz8
	 jhd7Y55cz73Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57351C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030465434.11789.7371225654368698408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b66812d94230b39eeadd1279a03f68f97537406166d15f4c1924a57ae105e0
Date: Tue, 06 Dec 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670304654
