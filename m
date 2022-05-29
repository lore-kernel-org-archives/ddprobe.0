Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4405528FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 16:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653840779;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9rfvZzKMN3nADjvlrmBLhl2T44oIMXmshDuGLPAYts=;
	b=ktvGWq0HKaONrIewlZ/s78I9ieP74K9q52E0YCUtzpSjDjBs3S4ZnOgSc7BxWL4O
	tFmtAJByeQ2bYIijt8Csp/ogJBbcLL/JEERadEoMdrCwI7896pNsEDlgK0Ocv7wvJIq
	ppKZQXzXO7lFit2H/yH9DqCFFmSPHlqozOUfRid0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653840779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9rfvZzKMN3nADjvlrmBLhl2T44oIMXmshDuGLPAYts=;
	b=fHeobbCa+FIssOPVsh31BsEMTJXEJ1u32M4JoZRj0aDupPq0BiYlid9w9W7V+orf
	ra9A8e8evl8/AyxWZWTkCUwpB4wd8bujZpnmizIiZHK7Qcknfrah8JQ58oXXFq3EvRB
	qSJlgwsJ/hCQzhvPPWrfri4kQG63cSmTXbIbby3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811097981b-0ce117a3-6943-46ce-8cc8-45a36698904d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b6cafdcc53a2e28ef694eca904c4354584f595032c2c87fc87c6aef4fe13918
Date: Sun, 29 May 2022 16:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653840779
