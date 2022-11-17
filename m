Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD187C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C41CC433D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668675054;
	bh=lZMvZ8/yGUEOc3ans6kV7V/YVCIeaWebR4HGahxkrIk=;
	h=To:Subject:From:Date:From;
	b=TRFJ/o77b03m47AuEYZ27omW4si3RufsJXdvEgqmlVdiEkQg8h3+Yp1wbaajECaRI
	 e6QkANMAz46Rhr9iaig5+JbTq3pJMW9K3/wMBfMBdXEANWMJk58Hc7+Bp/HZ4RRKwQ
	 S0yySSieIUmp0q6P2PaixyzurAu+TQjI1FasmSj4nGeYPQToyCMeAYveo1IaPX5zhw
	 20u5/9tbF1qz/SW56YMf9+X1xl4UQwkvhOAyaRro9MGAlFVLm7DHyQrayN/wau63Qo
	 dDZVAauURG88Hc1VATYhJJmlsHdBHKSSRRxr+VhoZi1xizeQ02utHZfJvdr+liBZla
	 Hnk6w3qq3cmmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A0FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867505434.23212.18127294181418464553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5beb33dd34f113163c9dba75cbf52d997951ea0db8c0141a03044aea2801222d
Date: Thu, 17 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668675054
