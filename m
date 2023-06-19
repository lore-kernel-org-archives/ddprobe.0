Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950B0D53B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B808C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687200729;
	bh=QS5P7ib+iPbwGc2rKoOE6lFp0ran6/JJeRcjXHYSQFQ=;
	h=To:Subject:From:Date:From;
	b=swQoZwvzSgy/e+wuv6XoOZdYEREl5PocSt44dVIXmyQp0q8MnIA0bgR7gIah2PoPJ
	 1nL5Ny27V7r/12vT+roirGkmdnPInkWS8Lc1UK58SjoqsZ5MlzILwT2nYVpyxJlZ13
	 WHB1FdTcwqKb0JJ3HR9pj47hOpuQyUJkdwHHeWuy81i3s7d1l8LY9x5PvcDr6dG7KG
	 XbFiorCf+SaMXl6Onm2S3IlLl7Icgj5D33bn4tHKQIx4vXZImQ3MtKFFmSz2aUOLpm
	 nEEReSiMy5BGs+NDj/RQ4D36erbOT8SCv+H3VQw+qJO1549pG91uWnV8B1RX+cvXU3
	 dO0GZG203yk5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AA7EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 18:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168720072886.19652.17336343048291391672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01693e7394b758fbe3cbb467e522b61545937dedb18577d0963d8ce6253f674
Date: Mon, 19 Jun 2023 18:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687200728
