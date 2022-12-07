Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F22882B
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83530C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670425254;
	bh=Wz0axZDfJwHu2QGQOFsDa6OLcw6sc3V5ze2wkDFyNsY=;
	h=To:Subject:From:Date:From;
	b=hKrL26E8k+Q8G0+zG74FQ5Ni3sEYnpSEluBVpfkzyrIU2+Dz1n+3rqww1Ttz/GrT9
	 kJ8dl/ZUyCzAQUNws3hT9UEAqcXOJDeEUI802iC+KwgLEaeTzuijCZRowGtE19T3ja
	 1UoGgSq/Pzm6aLQT656UeBVdG21AmLf7IjqqJf3kWdhZf/BK74pYXlVEOV8ksdgWWK
	 zbvAYw/cpV+YFveSkDITcJwcTrKFueOmvtz1GVnCS3syiJE1MHQgQ6TbhTXTO0KOtm
	 c89bPe5Q7shwqlYWa/qQW16cnyQLqG2BHKyPBI9kBgiA1b1Z+983hKWaiff6d0ESw1
	 w2+a86mbnnlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CB5C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042525439.5488.12508141819959852117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498a7b784b92e03efb7ca55cb1aa6fd2d80cf0205aab2389d8e8eb795e2dd9ca
Date: Wed, 07 Dec 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670425254
