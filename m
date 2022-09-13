Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24EC23A4
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFCFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663044653;
	bh=RvMFcmdQyD8Zxw3Qa0bZHk3bInfVBNrRvE1ClaND2XA=;
	h=To:Subject:From:Date:From;
	b=spxfqsqmHHLupbLpyZV41TWtm70c/2BKrYobWPZhwYET9Hrd1EDOAVkOA1gaaAR6j
	 o25TBjH5Irlc55Tlab3R+VNY/FRkcpUGRXnjQ/JuoJQ7f9AizgIy42/QKAl+LTfpyc
	 SHJyJz9TZIxSR5IKOiblkt5NCx4Fv0I73sN1w9zgsPAvM+MM6UEQa2Gb8zG9sxGMLy
	 K7xemWhT2oWRrOYY6T8/f1D1Gz+175iJcFAOjkTRDpV1oEvOusv7zW+RK8NB+QeoDs
	 la830N9c8BCCcanq95UCgkD2I615LYdeGNRiuUrq6rRl1mrcNRf8FfT3zS1s08m1Ld
	 jfLdoOeYk3hMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5662AC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304465332.23847.17818080702546278227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a02ddd085fd9e3a3162c9bb211df5386cd3ea337190ebe5189b104fce7dda90
Date: Tue, 13 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663044653
