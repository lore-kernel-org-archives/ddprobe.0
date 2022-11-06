Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5ED71FC4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 927F9C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667713854;
	bh=YnJZ5A5LWmmx1wI/GGI1gipe7PHGKdRVi4znxX+is6E=;
	h=To:Subject:From:Date:From;
	b=cVsUHQdr7GlafdLHBNGt5hFM0H9wbRiDPXZhH5qB9EylIL17f4TJPI6nXDyZewfzm
	 STuttQdToYfmF+RFwYzENw7IJnlIMt6o54rWbAJTBKo4AJnGdv+PIQUMPm08tqhiGP
	 yzcTLK5cvMzg4zsbtUFXjS4mQ0z2lFisLej5YV0f6hbj0OpdZy7/PVituWmM+YtL4p
	 /yxzHwEPYrX+sVMoIkSBE61TGWAniRGp9npimdtt5MdyLD1hQUdFKgYwgqn5Ye4zpE
	 nhWcy4+S7QX/jj20/ybivO7IPaKfjKnTl9/VWWkR9qqp4kutzaVvEF0gCF6Pl1iuj3
	 BrTr7nrhfTQvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E9CFC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166771385440.5492.7465138761256251134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb27fb9a1a294e084640bf0964b38e8cfd6af825075079b46788be6f93d51655
Date: Sun, 06 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667713854
