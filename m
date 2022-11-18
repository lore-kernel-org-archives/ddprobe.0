Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD293D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DEBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668782454;
	bh=pgjR6sOys8j4Zvrt7crkxFoUZ/AmJdLE4UGBGKqVwHw=;
	h=To:Subject:From:Date:From;
	b=VBZElRESTRgyB6uOcTfCYkee9YWEBZWUVIEo0bZYjagDf+W7KY/35+10N3RQkm5cG
	 4HUtUPm8uSdzNTZ//VFwyGW4vP4jrP0eYA6hgGZNsJEosOLtaVPyG409pR6A8b9VSZ
	 pJTHB3FFXbWokFxNxVze1kq+o+ROLEwM0IoZcZ3fsazCxRov1MWV+ElPWfVOdBKr7d
	 qK9Z4Qx5YZnt/VnURrSgbhLWvVPORe5aaobZUQYg6PQ1NcOGee1hmNsFPMYQnBMF2n
	 V4ue1ms2wPBgUPOxh2gDsMQ85ArGKDHBKWp9awr2cNwAnjWSw4LPwtRDhip3abQCc7
	 LiTPC7jhgZaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BE4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878245435.7244.17277699859596055412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead09a2872f08245c2d3978a1552eac41fd9541b46b199c06effa56fc48779d6
Date: Fri, 18 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668782454
