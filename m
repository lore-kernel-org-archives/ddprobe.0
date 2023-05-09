Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C0196
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 12:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA28C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 12:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683636065;
	bh=II9LhTmEDMi6uVauJjPhS3WRYw+W62U0qZzJtQqM3bw=;
	h=To:Subject:From:Date:From;
	b=oIcYbzlL1LPS6eES2GTaLkT1CMIkyhghiAHb4+v95D7SMRuWpvlISVxMZv4ucEdCc
	 ILuZzFQ5jc0jg1LOjUkOOoPoOaoRtAxsQIgxWwPpwSxqXaZXCdMVhwqse4AWvxwDqD
	 wCvJngz3JCgOY5l0+CsqT45gSvmxV+GUH/L6qe0XywXGev7w/0lh6JQEH/PJAOqF4o
	 iGr4zAkDKekitukE1w5sDhbe2axXP7OQArMF15rZPwYdly2vsaT7ZF3mdpYdmJgCzb
	 PiqeJ0JlIyutGwzE1y8MDBU3QOpf8R519CJW2emG0OAXkKAai9rFcD8Ryxd8fOLOgS
	 06UdxLJEoxf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ACBC77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 12:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168363606572.19042.7730500906088690176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af082e563c1db2547d011aea1e802389eb8e7294cfd4de4a739a3850a6ce2ed
Date: Tue, 09 May 2023 12:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683636065
