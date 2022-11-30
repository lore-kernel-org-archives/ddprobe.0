Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B420B6FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA92C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669831254;
	bh=x4Cik9XDM9TdAr7gTr0ZCe+uX1LOFWwmyiMoxdFPoOE=;
	h=To:Subject:From:Date:From;
	b=r0sEXov9U32wN+Fy53ekoEUMNS4UgPI/UWGF46SlhXiM3hua7kLmHPXYkWBX17yei
	 fL24UrbhhWVgJpJj/mRFQMhJDALdAh3lmbk9kIbttVm40WYkUJkpILyaJB/5QTIiMz
	 SAD81g3gBCNcxPcwWxWx0Fw5UsHqDvJA31Jex6H01tXAbVV1Fr2DqrcByzCHOhKu9h
	 ImCwrMqCFCVhBsHBG/yzI++W/1kR5WaqtPCr9N4bdSoGyyp8MQpXsTyhuckE/LZLyM
	 BvoTdEUyFxukkEJ5QWYaoZ6OHriehlIjWJVyu52BtkW6OaoxwGprYeQlD+9UwnwCrM
	 QR0cnKCEFqp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535EEC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983125433.7531.7741454426088491810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e1067ab9dd963a32d8a2e9c3133d071019cbe41d2de7f416e15b3f79cdd2f7
Date: Wed, 30 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669831254
