Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F442100
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770ADC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670309454;
	bh=zaQ+xrrK9iv5CrVPn2KA9kHVFR7Ozwk3Q7CboDQ4hCE=;
	h=To:Subject:From:Date:From;
	b=J83dIB58C8PS928O14GUwmFZLlIkYeDfm7plNO85+6q1Jf/ovSipdz+DekkCwVESg
	 qlWDIMcGj23UGpoZpavpvISKZMw76UetbhQTfmTJqtbPM/BM0zYjurGkNcjK3IMJL4
	 dTzGOPiCR8G/Zz41AP5xwT0rIxB2lh9eKcHZBJlu4urzKI0zDRa3INcQRRTKp5cGbi
	 Dwygvs1u1xJtGAvVogDUyFfGaakF8fHoZjNztSmlQpmjAD5hKY+SfTefn4H2+MBCC8
	 9hTccD6ReUS+ihse9Qp80UAQXI+ZhivpF9fiOi2K7HWCF+qKC+9lXKswMsaGqhpvBy
	 HTcvbva3PI3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584F4C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030945435.10468.419392576415905058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724d4bc39d5498502a17b0ac246f5eccbbf0eb0d854acad97781a8cc880e62a1
Date: Tue, 06 Dec 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670309454
