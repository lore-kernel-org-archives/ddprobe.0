Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBB57B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EAEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665959453;
	bh=3ShJsC44Z/xKOcElmuIEFqGKBAgFPog+yzJ4LKi78Ag=;
	h=To:Subject:From:Date:From;
	b=QBaac6So+WxIOE8+jvxPDbTG6/C3Olmu5B1lTO6fIHPLqGD+DH2HwYWLewO7qngBM
	 3RyLOr5sad0dU1yQY/XqABKo/M0Fi+JqK+prgzkQ/X+FwHOtW3gt/k9D5qbdPUd6kX
	 oXLlnF2NdypGGORMJg8P+r+eC0hR+BxxQ0HMyr8F345axCo1eCf/roo7gyJg7B1uw/
	 ejXFreICwzYt2ak3jvG+PZA/7TTh7JlE6vF4s8G7oCjjBr/c8Q+Jq3/rG1eP9GMOT4
	 BLzNlwVTGAWE+W1c6Nlu6YBBdyvuNNwpsTLhqqt+g81628yd0l3py81NAxBfJJVcgp
	 MEqehLQ5xQ5tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560E4C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595945334.22036.15123610449297330603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f821e69ca32620ffa963d5ead4dbc1dcb01918fda3eb4bc8f451b451fabe0a0e
Date: Sun, 16 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665959453
