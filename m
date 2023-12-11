Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8BB3BB2B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kid0OX7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78215C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702298896;
	bh=rphnFpUy8RBePs2ExWQqIe2h9uS01GC2qJAC8lL/TTc=;
	h=To:Subject:From:Date:From;
	b=kid0OX7rExA9/g645BR8PkbjCKbzoYTbxaHu5WXaFzinE34VrhDqonPpIH8SMhIgo
	 joxw8S2uAYsP1ZFOq1SHa3etsH52eQBXLz72AW0pAITba7PgHLVyUxnJkCkh48nFsv
	 +2ZUJR4o9xV+ThykkG/P7aC0sC4KhWIm8CnRGuRnWIBKlJEQbG0crxtrpwnw8cle93
	 Fo9zgQpWfODwThsyanSyTV3910XwTQU3imewm0mCYI9McqqYtnCGY4aF6dLb9wilzo
	 JsxFb01UdvB5ZdU8EiEox+aeXhrbNwUtuVFNfQu1DW+ypV/aL3Px8usZXTb7mWftKD
	 ieAp5JpEVO1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED83C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170229889638.23500.6547147892022449988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7983463d5ad72a2cfff98f5e39090c8d95bfea9c0cf89a926a5d8a821fe80908
Date: Mon, 11 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702298896
