Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAC62CA4
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71495C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668544854;
	bh=nvze/ONO6DAFN7NkJrjDhw7xKiQHwOwkPStcI1zvnB0=;
	h=To:Subject:From:Date:From;
	b=WSHZiI8TlSY7ILayb81ANH6jpH0NMN9NPR4hc9Bue5N/CyQHQNtdqZUUTtZ7Ydw8u
	 YTFogPdjFIc39J0QZSbIXpXDQqEfqQdqelQhP30IrmmDOr4XxXYCHZWyYpLDfuHCvP
	 eKPmzJTLEnxaP6Dc/KkupvRxWuAuvjA9Uyqwj8qmNNCj4sM/Ic+2oYAePZ3YTr533l
	 qMZchTyAIMlVWfxbGJFewS7K0Cb7JE5j4ZaqINMKgFjVzVQqhxzxM3KvCXkG2Jsy+H
	 RJc2q7jYHuFUEfV39SovEoEYH6KJIxaohMKlrxZrv+VFqsR4tKbJPT9AMfTz7SDQMP
	 ASnPQOR6zpxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D98C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854485434.31173.6113078033977785554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fc35ed7e5fc72471a83d6e6f1200de857e41263d69de49be4473c980b979fe
Date: Tue, 15 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668544854
