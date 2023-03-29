Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958B02F30
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B1B6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 15:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680105306;
	bh=LQIiFRwUce5tf7NGaHJZcL3qo+Jrr+Xu47A+johQ9as=;
	h=To:Subject:From:Date:From;
	b=EHUeYizTp8mnR6nAEOvw4YtOFJ6TJ0F/a9xCLiSliV7U66JqPWnFoTjjWtx/TrFEy
	 7cRjSkMkcA5kT3kuUlQ2GrZmmpHIS3XwGGQm306VpveNXU9058A6CERscE2Rkf6Wqa
	 XZlSmbMldT9yHD5him0EBHAwK72Lm5gcjKVE4yJsx1ezzG7r6qZf0TzgRx9/IJgVaH
	 /S28VFLzzocHD4dn8YG0PMM7/eycrLynocoXh3kLAQA+8uEr6mv3UruFazH95z61MY
	 UtPHbaGjFTMYGuRJh/qX10lKK6GyDtsOIn51cyupgMDzuz0OztSa18Ql1KgrUHCdAe
	 Z8OI0IPkUS/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 129B3C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 15:55:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168010530606.2203.12093110839551698257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ffcc3534d7a4fb358a5f91cf4c105d3a8479e8898203624bd69595e1b06463
Date: Wed, 29 Mar 2023 15:55:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680105306
