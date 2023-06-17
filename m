Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7B210EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2605C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687042208;
	bh=rhwolMChYbR5cj2klB5a4Y9DtIO1/1cyrZciZkBN/AM=;
	h=To:Subject:From:Date:From;
	b=tMDFJ9s2zQTyH1n0pxF1UYfe4dVr+2KzWn9VGaj491GAGllbGurDtOmD1SyoF05UP
	 2XSXZYhb81nziZUIs6tlVHBxqSiLy95MYCJCOkdGyQ3l5q5LWOklHYbB4tiFIqZZMq
	 TbGidzNwyrzenF6iYomtNvH7UJsRH6yBzk0f0cSKxGFQ8aQ3r9fIM1dVTJguZN3Utf
	 iHL0neyvCTQ0oFunObe6jg5WjZZlfyyMTsZ7uxl8g7iqNgjOuSNMPQfOFK1S7kW8IP
	 gPoZr4HwGE0Lovr8N7aut4bllSllS626h8JRTk2GflLyp9+Em0WQsiii3CPt/lfopJ
	 ypuDWui6okhmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AF6EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704220867.17262.1003843216651060057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b234f724d867a1436934eb2d465073e5ee7b04bd0cbb70052a558c01c6258f
Date: Sat, 17 Jun 2023 22:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687042208
