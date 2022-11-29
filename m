Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FFE639
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67388C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669701654;
	bh=a4LxXmQr3eWJpJLicN/PAvwnr2stdVMWSkq/bbU8kEY=;
	h=To:Subject:From:Date:From;
	b=FdMcLGmIPDQG6PS01IEHiQRCZpKPKf7BuwSmPkGNQLyx66gSBIHukVybKF/aDlC7n
	 o+9vjkvl3AcZYWFkPAtsc7MK0O+1OKBtyMtcwS9v27Fdtn3cYVUYjVee7W1vTJLJ/w
	 vPRli/xVC19+eSS5z6YmsaDKR93TsW25w1CDLl1H9fC0yw4gefWJkE58/gjqax61hW
	 EmYe0A6GhzjEY7bMZfDmllb7c0XEc81KIR+S5niCBWVPaDy+fvoOaF21l7dhyd/5eW
	 5rufrwiTa42CIQ3XbxxnFMoNJ0lTCs3exRgXYhX/CZB2KeTZCWs+sVw3Z7OsKmzsHz
	 EiFaTiQwHCLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5F6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970165431.32546.10488656402568425521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fd914c809bfce207b2b52e48abfcb29db20aaf76cb3b8abf243d6283faf2e0
Date: Tue, 29 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669701654
