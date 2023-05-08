Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E2847B
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 20:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9940C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 20:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683578405;
	bh=/WgUDHN40umtposHpUvSm1BJzJmqTDYXPa3rRuNKLEw=;
	h=To:Subject:From:Date:From;
	b=COrS0g7YVMxSgwMTtX50Af6fZabxzD6UAjmx4T3bG/CRAe3VLAEd9gdEQewv3sOCp
	 qaBYh9u0Sb6MdtqXtNSxaXamLbuKRyh3u1wei73HSuz2xEkXFBpdOOeUFcPqezFr77
	 zfKXuyigWwXd3FNvo43i9AHoLlgQSnKxd/TbBJnra+EmYpPZ7OaBKQlfTmQGW7GrYl
	 qlb+e3U21DwZ41F92opDNsIajZOJ/zMuwsKR2YYZqeNmnesXW/k52ddp9y5RvgqAwE
	 X80WulTcJLg4iTRGpXnQBBn20a3FjffjNSBoniB1ZhJ09AsmgegV+JAB5wKPS6JT6i
	 QU8lDlIPpe3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4A0C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 20:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168357840575.3314.7592266820401721650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884cd746c0285240541d0674004eb2b804c741444a0ddf1f8922b213928e815e
Date: Mon, 08 May 2023 20:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683578405
