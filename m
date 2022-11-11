Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB30F368
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7354BC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668192054;
	bh=TWoHW9siRpaq576IY+hqdxwOdlZlrIH4+zLHpDns4bs=;
	h=To:Subject:From:Date:From;
	b=Dgp84WpCZcQiaqfG+LD2Q2oYYHDco8UHtneFBdvqrd0s67XtHxonaxmDMvWQkPyum
	 PeY9Ox3g/z1W6E3VxJTviC6CXGTkleHwg8s82Y6FsLVn08l1Rb0gFM2XnkI3188ik4
	 xYHbmNDuHknFE2vQeu17/UTuePjegvKjNjLSuM1hVVFb2V7iMSe53o+IfVgVMbJp7x
	 vsMcLH1q8+kUlvG/sSjJvC7WEetYjh4/PBjA7u/KQLLb2bQ5DEjkHQKezPyG9RT6OP
	 FjzEjlFiRweozNlHGUwsnnX5jqnVfsUFEUgntld5oMfMSaYN+B8x+GAOq1GFW8o8E9
	 ogrvH+XqYPLuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5418AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819205433.5309.11101338718909235747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba856368e30fff1316b34ebb2a1f3849e281ec3f702a8b41b7db0aaeb7e9d03
Date: Fri, 11 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668192054
