Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339C21FB7
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 12:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B03C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675512965;
	bh=01kENG2LL9c5Zpk4lMp9MvgJEgx1tneH74FyjWeZfq4=;
	h=To:Subject:From:Date:From;
	b=cq7/Az3wl9uUJfwBin5zo0s3CHX37JCoypeeU5FYnd19ooxeRznoPIhTF7fsc3l7I
	 T1PjK+tlWuSWUnMLhI1fCt7nnigSI9tOjiM06Bo8IQkrleFj3/yh7wmKS/+S4FWalj
	 MkitLBsFEe78/qMESDjuIHSZWgvyY/qPuoJbH27aodmpeY7M8ST/QPBRQ/elwrva7A
	 EG2mUevbjJAfd4K5ZS7fkBfFE8KghrywbiRM3t1SQBgeuGgpzR4iv2kn9M7WIaJr4o
	 Sdo1TxAEFqJ9yifGkY2WzAI/wbAbULk6/pw3jwLWLuJQpNZB+nBrDaaMkbUSLzMK8G
	 +5mmDPKClTyWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB105C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 12:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167551296575.26057.397836406511749826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f052034066d44f9dc39c02cd60e915115a5fd1e47e51759fe421ecf54610f86
Date: Sat, 04 Feb 2023 12:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675512965
