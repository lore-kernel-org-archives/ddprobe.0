Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C777C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71857C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661824252;
	bh=PaXBhzU7YU0JUBahh6YCALeWAV/TF7/YPOCR+t8r2gM=;
	h=To:Subject:From:Date:From;
	b=k06WWC0S55OcHfIazbTDBAAVAuunXTqT/TK82ErsAaA89cwGkT7TcJpSNri+IJrpn
	 /n/h0ovBKNMIYFCKg9gLAG32eA6+eXRFGmpLtUf6Mo0Y996QPyH0TfIPbUp/D+sEIc
	 /7BNMCPPEXKlw5xnJf21M8oj76PX7c5ZJ/HmmCiGgyoXt42kh+jYsrzXVnGuHou82q
	 lIC+e79XQkTtIGWSQjamog7dtaZ6uY4mTH8RzwvelkUTYRyA4OIfbdImMhLOMwZvPw
	 dDnvm7HxCAWPFiqkc4hsRfBkmhqWVhsfjb6bCjtrNqUpojEzTSRu4IxwH517t2u/X8
	 feeRGN7SEw4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50824ECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182425232.25129.9326073626579441359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fb728159e487252f0b8c1da36451458e32eaa1bb15bf122d5cf8bd2e8953c1
Date: Tue, 30 Aug 2022 01:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661824252
