Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07C42115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7B7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673638887;
	bh=u596qTfyNBLm1uB890N6k1V9G4DXIw70yLiGfAzTYnE=;
	h=To:Subject:From:Date:From;
	b=Akw5D10E0YDqk3f5hEyjL+vyL9KWRA+8O21dCSEkJNfSJEj+QcjP/v/j62TcWQqgP
	 b2LwA16dA5SvsKuM6nyazFNCmgbP85PcGn9p0jV8YIzynY5Qci/1ASod6xOCuw0u/u
	 Z0Js7fqy0FEs2W6/LhMtyk+sVftE4r17IGxcMBljmVYSzBGTjjwuJoObisHlBhcMQE
	 P/Jv6f+Qz1WxHiQdTbfgV07RUfTZ8wSkExul0mkAwMWXLmWxdHHB+TBQ9V7VQcVVfI
	 VI0ct2fVgbxMsJandZsLK9WobY+08e6jzB9pDyMqJw2uDvwViAwvIbbrsMaXK942Wv
	 z43Pl+9+95yCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DE6C6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363888740.9201.8952929899891743890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4704cf105ee533925f9dfff82c6296a34704e847abb81203bbe84f9fd1f3f691
Date: Fri, 13 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673638887
