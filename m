Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E58215C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 06:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC39C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 06:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685861945;
	bh=ZgEefF6auMqbB7mZ4X7v928xoa3yIdH26WFMoBDfYuQ=;
	h=To:Subject:From:Date:From;
	b=DGskeOEDl8cC4zmdWkzl4cEvOfXOyJFqcKgx8uBhoE1M7C+YBSn1IoASrYb1ASuQ4
	 Dh2Rc0T5nAv9FazPWZ1zYYpXmB+HknBLKC479F1ID8R9JTXrTBqJTARtPK/fpvaFBe
	 5CjpST0wz8rdDgP6VFTRQ/tvVtfhGlOqNUJFhe8XTrO/5cvSDJWFbIOEQfP2S8zZ6I
	 O2X24LdvdQ47DdxfyuM8+NgSOFXM7NHohVju8+ZeNxgMgebQDXv3iH9yUF5e2yHpA4
	 oMjuZMAnKUwooMnWLiTM+1XoTh9ZAM0s4P7giSx+NHB4WyZEuAhaBNefEvHAEGqGiJ
	 Dq2EQ5XNoXJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF69C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 06:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168586194574.22547.16924411952685893872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303bba73e08b468b931cb65eb92e076dc54ec41a4a61b31eb9023935074915d2
Date: Sun, 04 Jun 2023 06:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685861945
