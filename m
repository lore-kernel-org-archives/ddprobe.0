Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D850B8F6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92B40C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670529087;
	bh=lYrQM6IkImwBBzqHH2ejU8tpp7xuQKPd0ZktCaXOPaM=;
	h=To:Subject:From:Date:From;
	b=HXa6HrKha1oFmFrU1e2ht4d8bDC7gFAjhFx9JrdJwAd1eYOeE+CLEMkiqWnIRv9sa
	 maVSVvkkUllsxVof/ftO3EqMDe9WD9bNcC2aw147c9XZ+ek3l9ppPJ+sKZ7d0cmBr4
	 UcUEWG+Oje+5vm9WDFP4FDVBfVDf/glH8jsabaymOHTnWdS0cDA4ztMNhI8Fnzubuz
	 /56K5LE7zEUF2MsOKvNTE0F946PvO1umynleUivciwm2cnONkx+y3N1znzIqVMOhTP
	 KP8sT530iWFlQlcjeN1u9Cy9KCQaxzOMtXI+0DUxNw1xBlrNdEP47PEmQRjV3pYpOq
	 pmu2LQkuIU7MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 731C3C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052908744.9913.13586166974516904627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bad46569ce674a69e1deb8b36d004d1e1a3e863e740464a8b97349e799bf6ef
Date: Thu, 08 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670529087
