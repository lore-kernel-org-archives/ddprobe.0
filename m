Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487267E6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14BDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674446525;
	bh=bM/krlCCPcUcY66IsBVdRKU/32DtNZIrg+XMicARfCM=;
	h=To:Subject:From:Date:From;
	b=fhV+mGi2nn5GsOce6w3DU6lnVVGRPpIp1vJ/Dx14ZtLuaZqBwGkun1aCaWKK6Usy/
	 BsEmefU+dG0RMGtCBQJSPCYVsLyDSKx5TxAUi4LQHJtF5XV40DETP8GLOwApVFLjFZ
	 +knJ/vZDPLmABh8hQjqnHgPgCwjPqil+MBcwBw+oQMRXcqLJH8qP4argOih6WtAEFk
	 rQPK2aQtbOLpGk1M8GEJLM1bvb35g07SSH4w8yixybYbbQi0r9CvuNdSHDO60AI51y
	 b7Obt0PYJBfSRxqagzGWwWdGczykjQKSreyYqJznDdEBjphwmYXQ7No3MJs2anMDTQ
	 HTFwfxqItjlRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E25C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444652572.27709.17648267507713719030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92c040eb6f99c5cd77f1e00f28c3e39dc0e1ba835c7f21df748f9d3ad0e109
Date: Mon, 23 Jan 2023 04:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674446525
