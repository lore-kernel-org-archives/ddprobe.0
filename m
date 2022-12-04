Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B192A15A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B8FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670142654;
	bh=EEsIJ7NoVSiL/fmoCryGhTEGGf5LXCbQ0WIcGI8xbU0=;
	h=To:Subject:From:Date:From;
	b=h8EP72fg/jF4gDhZujhA+eccUX+6qthassSrbdSKNdkzXEEdfLcRGmZmQ3OVF6F3W
	 Ai8hZJMLTUD65ykLVqSqXiVlK3DF94hEhPr12UHlMydQ1bYwC7sKJcPDz+FltFnrG6
	 V8OPIDEClHv1fSaAoDS4OW8kxfTjUF2oiToFcS9PLFGQMtuWDb+iO2fNRaqyxy1RSn
	 WHu5dHYCuRU71C1ZFIHUOX50pXm6KHoGDMyAJYPIu/mqDeXWJXKWiaKvVlMGNiA7rF
	 6sCN+C0sIN6d4o3pqa7wkzHyQGA4iCbIIHbuzUcKHTtjsvKPXnaJg93gcclEzUV/Fh
	 T81JfNDFQU4dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5CDC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014265436.31543.12998590405541758085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733eafe3684ee7f9d38c6f34bf665bb7bafb8bcfb0359dae63722eca70bcc14e
Date: Sun, 04 Dec 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670142654
