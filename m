Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA48E259D
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896B0C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671214887;
	bh=XhzqGWXAWt0vtuRqI/nTiWjVd8BjR05/pQW4g5LZSP8=;
	h=To:Subject:From:Date:From;
	b=t8+QXLJP8AG86Fy1w00J+vMc9sjaHKWcUnM7OIGuZQfr7BfXvxH3GXlKt/G9GWUYA
	 r9J2TnYEmVbWzhD2a+eZ1ULlzzwXlxSwSNahSaXP1A8IVE7RaufydYnHCqbIuAhbTD
	 Nlx5ZLUwM3jRCkPLB4uhroU+iaTBx1DNc4vzphDQu4nuqKZFi7EWxKuIJbl70wvBMt
	 GaEecCYxdYCjWq6I6QWDqvAuA3le12+1zv6ezD7fCbFSfSZcSO5550n5OvHETSc41S
	 lvY8/qRoWPEk5E/ntozTQNzb0jn8Hwb6RE0QyIFQk1oSNY9nEN/0Z5QSyjQDS1+Ssn
	 kW+rNB7gspKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5D2C4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121488743.24228.5685545020694526917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877330d5a9ac4b5fb65259b3fb03a0cf0c18d7185d4c7a295b52d206f668d96c
Date: Fri, 16 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671214887
