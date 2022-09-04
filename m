Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF7B7E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0C5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662286253;
	bh=OanhLpeQJPgtf6+yjyDXEXMjjFIFQn0I2g2vSW5kKvA=;
	h=To:Subject:From:Date:From;
	b=rN61lrlMHJ2JafXMH828MUCz0FIVZVR5h9sNWXtic8miJId8f2puV0qMiJu7QcDAw
	 ofIkyWMbPdRLi7uez5cHMTrTuuUkXbMKofESTXKZFgw/F2YWFV96cvZV6DRTQGrrys
	 9Ml1j2WlSpB8sihvhjudt5e85vgJbFngDhks1J7XVoXMRFAkHhkNhf+776ENDD6u+/
	 FxYA+qS/61JjvQ1YMwuJfSMoVGDQi6z4El7/4QgROSDbW6VVvoR0lhB8+T7AS9mzuk
	 v3KgtgnQLTc+QKf0Qskk517eObMm0Z3qp85xYdH7mAWqDFznAo4RzZ7TImZKWTizy8
	 vfzN0Xp1coP4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3A7ECAAD4
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166228625331.28370.962455053497599695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d659f4cca06eba63679baaf03439600acb2e336c858861316ef5252fb56cd052
Date: Sun, 04 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662286253
