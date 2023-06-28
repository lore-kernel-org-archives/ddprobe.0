Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471B32C9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBE3C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687986188;
	bh=ctRWqll6vJZNygmQesJiyiCRPJOrHryT0iTewR/nO4s=;
	h=To:Subject:From:Date:From;
	b=tXAo4BIv5sjTcRwOEpkmZguH37JsMaJze2Bt1L2tFrMB6oShFmlFcI3UO8m5sGQb4
	 ncJahwiauo5iyH/dTsaLVXj85Ywym/1Nxx+4lSX6dXldQpt6m3tz+7FLlnxGl8/vFa
	 jqZk7tJhYy2xTp6JxyN1g37Pcmpd3gp+ACiKQUitHPPRBRJHBhSTOek4Raw2PP2ZkW
	 rXyZBRikZfBXLddHwuS8llEkG1Za66A8LEqAJP3c2YD8ik4v5PDPEVpTf2GkTQhKmK
	 D12TOpU0KZIRG4qgSZyOuDnKjmHVW68NflQHhVr5c/VeJYmZsSmxye5hX5Gv9qIATr
	 cgKbInN+mf/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23E1EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798618871.32350.14432798806677265914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65324a2657efbaad4c3e81c1bdd2b95d99c4043e3aa048e3e8aed098f55ae0a
Date: Wed, 28 Jun 2023 21:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687986188
