Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509D4806
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7179C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688502968;
	bh=E7vwjqiJ7/DLJHgahD1c4SpjxYd9ug0FCSwtzhz0oMs=;
	h=To:Subject:From:Date:From;
	b=LWSk0dESzad2cnVR10xNGLgeC+2c/wc6mS1X6cPYNK7PFFenn0OSyeTJgWhnTxmPi
	 hnQ4Wx7b2LsnkY5ibPi6P2kYA70e6wQMkjRJ2N1uW8hK6yWZKvgMyJvxwy/RSJP78W
	 9ksAL001mZR6im7RU9b7HgxGen9jWII1Z5gr/iPn3cWYaoe6i1FQTGMhqs7Kl1L8CS
	 px5uSB1Ow4/6uvc5JpZKLPGb96p8Pm+ArGVChEV6Q+lW+xHEblJ8BODlaLlMnRM9M0
	 kCM2SaSBUlUxW3T5FDJOyOEl87yeYZkX+w6sozr+4JOLX2FzBgpwitnqjQ6eHjwVSL
	 +Klsbkd0MAY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79E5EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 20:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168850296873.16032.14446938102787686270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f52891db0799ac844ca470ae63942a310d0a3c9e708c9774bc99d8c7b493020
Date: Tue, 04 Jul 2023 20:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688502968
