Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2761C23AA
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 11:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D042AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 11:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675769885;
	bh=hEcV3k6FLrMBqCdlVP8rOnXI6bAJGM1yqrYcNjqk+8Y=;
	h=To:Subject:From:Date:From;
	b=JFPO8tx6w1I0t4VPL/jprj2vL13xh8kmlnahukKYn8d4qF+66vDw4G/vOToiXRObI
	 da0CQu1QTJCUj98V7KItkk7I+//EMvCKV1WkXIHIaiUyi1ynROrZouVfLVZ9Z+u/qE
	 jn/frNYHy909eEMQzLFpFwrxrELxgkDlLExc/TMfRhM1rHQkTeRRiXCwarnYwrFLxx
	 /RmY7TKQixCkjat8aKVKWPehAUOfjSem8xFtOT27Ed6jjRRYIO1WQhHRnhxhCUDoJ1
	 hbkWRZIFeJQJVOS/O31xqhGMFQOI+hdUrYmB3VZTfQawzMJnlGdq1F2wG3UoKBH0if
	 A6Ag7GN3fi/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5269C636D6
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 11:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167576988573.23091.17184184312548467841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c595c187c35a0296e6387162680d0cd77051fedc56e91047d0846ae659378a28
Date: Tue, 07 Feb 2023 11:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675769885
