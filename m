Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E422917C9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A968C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674194487;
	bh=kyx1FAl0HgxMjZYq4RnRHjo604ZGqqcaQH0s92bx9Gk=;
	h=To:Subject:From:Date:From;
	b=GMUzRxg7UF1PGJx4hH5n1B4dpWGza+L7BLSTB5JQiEIhZesoKNl9WABnxYEU2+J9s
	 SEw0fbchlnlCAYBZYdSkInCNZbSJ6F4BoymmCu5BrEPeJ+Qevx+F52t4PwqvlcBjC9
	 50p55ak5Ne5diJ+22/Wm0GZC+S7o5mIwMm9vM86XZWl/PAo9Q4stFNXurmskrKLWdQ
	 HCA5tcLjvOPtFga+RDow851C+Vo7KeTv8BnoEP0d7dkbusN+vDUYzFwEs91c/+nK/Z
	 z5/mEnVD6K2iyREGOEczOeg3S0/AKhqHE7hWv3tkUQv3mzeBR3I/Siw64SZMab7jO2
	 IWIvKqGRzNMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68240C38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419448741.5614.692848379461938411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920a687746bf7b14bbd8b8d01fa43c5f98dea4c44019388975e638cf68e31b68
Date: Fri, 20 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674194487
