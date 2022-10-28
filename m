Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC9D1C37
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C854C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666945854;
	bh=wQLYFV6Zlw4WYy2GgFLZCv2Vz20HWSSKQfFSp6je1e8=;
	h=To:Subject:From:Date:From;
	b=Bu22ie+ERUkzsm1NrtUhMXiFLjk3UIvyJjaZiQDJMlktmUIo9UM+7cJQ9qrDM4mac
	 A2nQN2Ml3JDrvJPWb2/LWAhy7KBneBjrZW5CgGOKDNvkRuq8TpIV8VI7iypuSaqKJq
	 qZAB1YRQO/qRFzkC0iS88OTzVZlca88ldkXsrPypbheY2LIy/fcozi764v4Q+Z8gVb
	 uEvEAola93NTdMP1MlhGmAzF+v56naT33thUXvp6sfz6PF/OiRC7rwoydyI4WCCS20
	 SbrZ+PzKb2aP1f4lr+TmHvYXM9gIEPZ3HfQV4qNPtiO+b/xDmo5MBvrPg+wExsZT1y
	 E5rXvWf3LwC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CFCC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694585432.21095.11402171869305787541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f4f1eb8cb9e12f9b44b33a70c915f00eee721e60faa20bf3be1895d9f975de
Date: Fri, 28 Oct 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666945854
