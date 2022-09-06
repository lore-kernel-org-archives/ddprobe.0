Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49072F2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3A8C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662455453;
	bh=ysDQqvFXdT3DOu4QrDrF7+V/gDc5t1qknvWBdYLMjJM=;
	h=To:Subject:From:Date:From;
	b=PocLQjIP8QYq7NUYvy34mEn6IkDZj4v9G0rrFyB+iMhUUhI/6bl9tpLPyDc8T/Kkl
	 aZNWZBpE2RngeQ/b0ZS7APOfAAVdITBiQ5xgOb8BtnEc3MHnxFisjzz+Mbw+9/yNie
	 s15qnQOXPEv70hvHKO9cAGpOqU2CQlE762nR8VL+ts0/KEf1IsuUlX7opw8neBGA/0
	 ZJz9gtXrZrpfMv1T3AQZ+65bX0BMPwcqVb9xmF7q3JAiEXlq9LkOsBQVy6/e6ZvBRr
	 fg4AcxO7KEqPpq31aJQ/N2uSjMPThj2ir4dpFZgTaaRhbcbg2Hg9uF6ExuMbYf0IR4
	 kPisYy+P1ggLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A2AC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166245545333.7410.17589621167830241826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4b7a03bba8dde763859494cf9651f02fbd4fe59d2d623471a693021c8cda97
Date: Tue, 06 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662455453
