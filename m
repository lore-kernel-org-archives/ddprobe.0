Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CCD33DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E8AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665495053;
	bh=rCyQs6LOGweD4L/+H4toRArPDFDnaDNQB2rUAXiiGeI=;
	h=To:Subject:From:Date:From;
	b=gcXDdvrb8Ry5q0nTqBP9TIKOFb7ZaitVz/AZ14SRxTLXhi8HeOeapUsKREIJxdukF
	 gdC50w3CfbdvYtCzKt59xqLuG4vCiPlUtiuhuJIaV+Rw0BjgJfHJjoAHFrwbc9qpBt
	 rWHX7jy5JeclVibsMz5RPMqxT6lwJYGTzqAJqe00ZwYn1gI7qi45z/6M+mrgWQ2FCA
	 hf/9wnMUVrwo3LEAiLAdj/pJD8EvpxUGHlrFbqBROSnXEG+pHtVAkvzvw9Me5QSvjo
	 t8ExNN0U2fpA+i3JaA+9WzfF13sGXw05KTH256kMKiQupHVFt/TUeUw9qw405GJsEh
	 2etytmIdy+91Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556B3C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549505334.17232.1349382764450412150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf52d9e9a7b2bd33e310df4c03c7907048ebf10d50c8e2acbfcce4e6f8b5df5
Date: Tue, 11 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665495053
