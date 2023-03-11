Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA3B7E2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09C4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678494305;
	bh=pKNN3JvMta2ujpuCMaHx8QSgNMB5R3DxQZF5kDJMYHw=;
	h=To:Subject:From:Date:From;
	b=owPFpvX/p53q6sgmUA/QQEnEIEDWvlYs4IYjJvDuMMBln+5sourS5OIJuNJLKS/xL
	 p+1Ikgeln/KMZtWXDYOVyRsG2wGElJ5pI+i8OFQ2nFZ0ttwnYhEgcoQEo7q2bE5zCF
	 rqJ54xAQHHjlcBFUqae8hX4sYaTnnpsz0W+H5hj95sMfO3dot6cB2HK/iAEnDgfGkd
	 UHGZcL6y6rdISdGoW6WCRNN3oT6VFxi5XgbtXU0eVZLyE3OGdBMXFLESK06y/t8dTE
	 VREj4JmCtrHtAN3A72/k/zrN6BOqgpjLjsezby9vEGOHvJmPldeZKil2uIO4IdFh0k
	 LEHBSXRGRhOOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B615AC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849430573.9310.561869671619036772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46022e505fba4b271929f4e4958a91dc2760cd7da1f1ba84344b7e53bae6e0c0
Date: Sat, 11 Mar 2023 00:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678494305
