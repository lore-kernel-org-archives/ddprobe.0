Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616232F30
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BB9EC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680456906;
	bh=4AsvJKxWC3g+uXuM7gSLc59LngXTvaeuRqEA+hfxUIs=;
	h=To:Subject:From:Date:From;
	b=g7lcbExkwVJ8X+A4XhaIR2HkKJsaNld5JkdjFA50TqQJChRnbAhuM6MymQCcapPLY
	 nrbClHnNXw8nNGD+VFYzyN+kvtNs+CMCassPAFH3+E5kGgOoftQzhGACzTfPUPmK9y
	 N4mChRSxXFNoat7AWtigOVb0i6kWoBCc3gOVonjhVTrW7oQ3nXBSA71ivVke5iHvZr
	 iNQKFztVCQEMFQsSpghmAu2hjExhGzum8P6gJKO/1j5s6woKfoEd0kfAWEIOr77+ZM
	 oPYJ6n9tBR/0/ppKI5YHxDghaPNt/gSPJhZor0XcWcol89liP3cykCtnrgOmdJ1For
	 20U435bJz8IYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9898C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168045690587.2831.12132211550899128691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035dc13316b49c96926ec448d5b3148e6f42057d47c732a6bf6d2206b153def1
Date: Sun, 02 Apr 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680456905
