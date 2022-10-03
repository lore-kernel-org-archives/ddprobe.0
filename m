Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98E517C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD81C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664799653;
	bh=gq3AJC3eD8WO42WzcPdD9lW+z4u+hAg8q+7zKkPe/ys=;
	h=To:Subject:From:Date:From;
	b=ZETgoeN8CHf/hsoSE1VxSC6C/HTW5K+k/5MvoWQEJogz07i0Q1UflbdqhipA3mFkl
	 HlDlUe4iN8BHC/JRprbm434KMhYuXywl44r1CHxd9qDv/SYKZXatfcm/f05toUahDR
	 sCyvCj00ZsUtS4iiu7R1feD0q/R6BK/Bg+DkXt3jiBFOtSyLxXVsKRH+NB4OosS8EN
	 i/9kaQZBSSEp1j8FA6sLZgex0UjE8O/jEuV9f+W2A0HrqaCR/wHig+Az/GnYY1BbZ/
	 HGqXUDs3xKp2hIchm+RN/DtmOTXS/dmUFgCni3Mp0tZGAu/xmW8kK55PtfivsqWXiK
	 icPofheFOQF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AC6C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479965333.12034.14770032109885804678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7485f547d3b71e7deba1ed10b443597afaac82650427ec78888c4fc78f8dc63
Date: Mon, 03 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664799653
