Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9649EBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F21BC433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666695053;
	bh=kNQaEUGWOlFtOs4CqcxCdnv2SPOn9ru5r7d1utibksY=;
	h=To:Subject:From:Date:From;
	b=CiMSpLv8Un4rGNMQtxiWTryQA1ryJ22fP99wqW4i5mdqr6gLb5i4SL+dvq0nPtnrq
	 eMZqKyzYvcxBLTmx0j7Ncs9Z+L6TAUUGXDJxEC1Z8xxIi7seKMmsWJBGhqwC5KTtYt
	 vLXLLeBbGYVS7k1aKdt8Bye0Ajvr5G0E4IBmzPP3/6EB2+NZnA7l3/Un+U3NfkbYsX
	 3NrlALyQ2kVguo3qy/1eyS6QPb9m4V2fxqL7oLdISugtnAHkACB4vlPiPjwmB79Jjt
	 o/ji7rqX0IcYAcnEWKdXUhH51uwbOs76ijDtA8V/TQucwrmhv9svj4ydmWxcm99a4D
	 uWd5I1HWegr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6388CC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669505339.11391.5689691984424554242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88f1fb8ef25feb2dcfc8b5d2057eef88ab5c8f7ab2146696c0b01b65d60a447
Date: Tue, 25 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666695053
