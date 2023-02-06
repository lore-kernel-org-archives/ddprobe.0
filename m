Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8C87F
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28F3C4339B
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675644365;
	bh=YhhKHRhm5hiR7lLaFuESVjhpfp3vFR7AgRsVcEGcscE=;
	h=To:Subject:From:Date:From;
	b=eE8xdC7WAvuDExGxl0NsFLgWs1TsdHNweWtg1Wq+3yT78BhkKb1n5dQlesTCvw9v2
	 6yki+UWQ1DJ4Rzffe5W2DTfFo79vx8C7wGTvV3g4jER1hZAORMJsy+VME8OYffGrjU
	 U8ucWOPnYTc/ciyv8EYvsWJfJ5/jspC3jXG1u9I8QpN67f009QyDLeWU4uS0O73N1A
	 8HRn76+tutdIhvdwNOZaLcDPAI16jeSibe0vqc+TB4gQgEcGAjUabIUbF40EZFVhCs
	 GoYdHHEI0N97GFMbB4GH81l3NncdlhzAfpw6cBeD1mVuzm8PY+TZhY0SaeplZKpR3s
	 Va19LPWLiEOOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBADDC636CD
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 00:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167564436574.22322.1602090427465096085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4d72d734dcdf862015d59c6ce9f79ecbbb8f1e3fbd3a09d58bc8bb832d4a9c
Date: Mon, 06 Feb 2023 00:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675644365
