Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2342E1391
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6504C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674477785;
	bh=u7K3FXXhY/uZBU0SzfMdoszKVgQ4B+kQ4Gbky252XJA=;
	h=To:Subject:From:Date:From;
	b=XtBWZ4VZlaJNpuzspbu+D9r5svx/TQZLqUOQm/WMXn/zJZrQvC1idzsDHPesTUCGk
	 QogI6M23WaYG88ElOu4qHdvVFiXlefaO4ChgaoE8Rq5g/J4jaQHcEAyILG5wVDMcFO
	 WNO9IaHYY1ltpu0PVVTgPSD6MMScI8VzN3JG930ADwF3bZXbVbU4qEeSAp83MT/n+u
	 hpATzWUaawJ+TluZ91Gde12SbGsiIHEane12/pWoSF8jb18ElZ9qfb8DvwQYDDv+A+
	 adduL839bTeDUKKY891ko6vJapUA/XIGmkIk7dEeOnp+4HGbu/V6VtVEhElDXNCIq3
	 C7CaE4uW1r53A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8049C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167447778574.21339.11914693166815438485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31d2159cb026a25d69578bc735ee0893ed6c7ef9b5ac5ec6b3042f308923366
Date: Mon, 23 Jan 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674477785
