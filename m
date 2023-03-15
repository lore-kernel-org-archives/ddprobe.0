Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7F525D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 13:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA01C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 13:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678887005;
	bh=ul3LEG6a8xAXn+boxJVvuWk0DVZCxDJzZ3Y9nLk5YeA=;
	h=To:Subject:From:Date:From;
	b=IKBQIq64Cg6iV2+nfYJrZiLq+LbRps/OsKnTrRRpT79vXxwr2moEMY+3bjpWG51Dm
	 iUI95pv6DPWE0f3TiubT1mxMF/j+Aa0RQRLGC/+epaVyZPlm5OmEabRRNzygIDKc/M
	 rNMu5Tv+fTJ2AZ6aGf1l4JGIe0vvgaGlN2aonwVV/t8MIPElXBciKFZMSbOqYQjliy
	 IfAStxLEQYMqQqxYK7DyvHLoxTm+yCi9K1KXObAJaV9Jqh7WZDw1n1ciB4cjKmgZLy
	 wBm5qO0G3czXBiGmOao+srTCFIrOT0+LrebhoLh55ZljieJfhvNV4TPUwIf/g0Q7vH
	 /H+7foBJ4chFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B460AC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 13:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167888700572.16260.9060018564564871971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7bc5e6e87ff334d5a22226be95ffdf54291bbf59a1566479388238a5823568
Date: Wed, 15 Mar 2023 13:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678887005
