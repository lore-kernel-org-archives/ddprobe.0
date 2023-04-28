Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A228ED
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 09:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5F3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 09:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682674985;
	bh=mqPL4YFrVMj7DWdtecTdcaS/zl4PW9WCxvJJj0+RC6U=;
	h=To:Subject:From:Date:From;
	b=uZCM+7O53BwuJHjzUecsAU+tH3zuw+hbI+iA19V2PN39dPjXtYqWg7BH/vOKGLT3h
	 t9Lx6K+R3Y51xiODk3AUDyC3aXhVk9Qic0NCRPRYOZgjbLwe6rQBWDRTC/HGawPxK0
	 DqFovHFJNSJcfBaLt87jICk0AxnD7UXSavihIT5BGd5v4+0n8oC4nZdkR/PzCS7C4B
	 Q+ITd/jaSWOC6AsbiHvE83ZzJhrAwkc4aWjY+JOmEv3+RNTt0nki/8NaSnW3DHzD2D
	 9UDgV5bHDoe05/M3aYajks7UgQRctJOcsXGiV2lK96Tx9CHbI4e993pkMZ7pxmB0V5
	 QNfUlgP7tSx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC01C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 09:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168267498576.15805.1970296401253043014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1a7e228bc7ffd40047ef91209e4d84cc04ba7758cdd131bebaafc0e07a6be0
Date: Fri, 28 Apr 2023 09:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682674985
