Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1FB15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77769C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670895087;
	bh=Dckz4+BWD1OguasxQ0ctTORGJN6I2521wiPpohM6FLk=;
	h=To:Subject:From:Date:From;
	b=msPjZ8b4aAbVf0+hufogfnEWgWMFAEHJeNKm/mmjZAEwAzt8eLKfRHJW3CpmsHyZI
	 4WzYXnccOvdQxgsCYpTQvNQ6RyFQFeLKWn6XUfo5boMaPwwA7K/6fKhAPiOrZDlJsJ
	 WVwCv2EjTt5OKZkr2zv5Cmr/pIAsmzJvyrgaHxAWC8FWkHfFFiFhtzuqmAjkS3A+Qf
	 ZSW0VIrYZp4+Mo51gKm/llCXiW1OXcG1y4TfJ6Nt32ssU2fiimzGh6RTIN8UGCXeiK
	 TdFs6HDCpdpvRyV1qYj0o9b5daQsdcjejkkZiO47ehx2mPxhNz9ErNAP6SlzO6pHqu
	 /ojlVrkfSrH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA53C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089508738.9661.15720786295517347023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d34390dc5b447570aeb7f719cd261f2088c494c51b932f513a8d3c459f534b0
Date: Tue, 13 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670895087
