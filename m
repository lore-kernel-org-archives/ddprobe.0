Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6678835
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E140AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680284525;
	bh=arL5kN38gSksIAJXy9fpmRCLvTYK/dq4A8BiwrYPd20=;
	h=To:Subject:From:Date:From;
	b=CRCXUZjbMZKujkvtCfu38VrdnTCZnxB1tOy8RIJ2wz/3sqbwx3l1scQy8KUFZmVtN
	 s7xQ1suC8OG+WdV3TLGQppGkdon44k8PPxRMT+GClBiFYKwOE8+vwysq8eZyGaNe47
	 YysedjNANCGO64Y8vMXhN2Zrmupf7tC761zv8P59kYMkjBnhx0v4wpfMsmT2vCWkJN
	 Ho/IKeIqKtgwlmg/dov+7ethIQfHCnTuHO7DKwh5kJ2CiaCoeEExBhaE/NfMnsiZ0M
	 YURdcUU0Ch2rE2T0Ql3Ka24B+Dk5c7y9ZciK7WfuE2U/1fFQGCujqObl+zNF2SB1Pu
	 q3cEZsltq5nbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BF4C76196
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168028452580.1047.15201097471740326006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7949fa50640e08b4f1d356db413c67b7e2611b1bbb7909921ffcb97b7713a36e
Date: Fri, 31 Mar 2023 17:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680284525
