Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FB72116
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B698C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664876453;
	bh=FLwYX4+jPcyhFFzNofU2wk3gv9VjqiZ/y3R4IuNfzvQ=;
	h=To:Subject:From:Date:From;
	b=eP/+K4J2I+mjSkw1zXYeI74A/BCntPF7c15JxUZY2xpiBIqRGZkKxf8lwmJBF5kth
	 pHd76oOOOCsmimOdi2iOKjan3AJjJLL6GyoSZ41twjqHx1Z4Ge1d6cLGYT6eXqLXq9
	 Mmx2lbD5Aqi7oqNN/DA4qNGC/TcB+ylABr3bK9ghd+Z1dIGhHSpKoZTLE2VbPbxNzI
	 9qlzCJ2XozHiEJV/o30RU/GV3zsJikjj7sqhXDEIT9hA0WqA4UsltXKayAVBQEl8di
	 CxHke9kDkVVG+twJSCzVBEde3cWou8GQVaCAt4kI1qx0TTwfdHfgT0NkhLrYsrY8hN
	 02AdURD1cjqGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C8FC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487645336.21882.8359342387666300685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c390fc1bd07e05dbb6cfd05d04fe9614899adff89df54c23cefa2002bdbc6d
Date: Tue, 04 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664876453
