Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1364EC0
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76955C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669027854;
	bh=XnCL8S9Wi09e/TJRXdYFyWz1LSbwVBylUR+YkxbaWX8=;
	h=To:Subject:From:Date:From;
	b=qyZ1ouffzNJlThme/uFybChQ5ucn8Q0fTEF2xoEds/E2gdRNHULRmuPhJMtz4v/3m
	 FQY5cMgRJSCLULHCjE/xIszJz/7NCLkag3K8llRsrIjvsT0gll+awslLJk1QvYJsy/
	 CbFGIfm0eoD9tLFXrfypsC3TyOOuxxrGvwBDVGJZFwUz4xOpqDsNgSrOlrQkhHAM5c
	 WGlvrRh31BINXi0S6HRuDtmWj9hnlXRSVtg+v2yjYBE8mwR97yJKBoMxQaVhbnHHG2
	 U9z2a2lhie9Hb1dsuASYwHJrrZxoBCJ1WFq4mYz5K5CXntUCM1xGmpk+yzAumfdERP
	 vZe1ibAygJw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7FEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902785436.16505.11384499332154994407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857c54862925fcdd359e4b23c4831f6f641979443d453e941b654df4defc55c3
Date: Mon, 21 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669027854
