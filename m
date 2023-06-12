Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FA418C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07DE4C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686571986;
	bh=HHITX7YcIsSxv/UWl+R2xmkv4YipUepfCpxnNax+C+w=;
	h=To:Subject:From:Date:From;
	b=gYIfkIfarLsqa3lrOoqMaNc0eDSqFgjNv5Es80NChItIiemTXMCOJiNiQ9K2dffQe
	 AQa3CxGPkV5Z2EsSG32pVsLZQIYK6wD8I0AuSSIGwNfne8w2WNFKPxB1e0QvVjEqe+
	 Sa15JrE9q7Vr47ADXd5IYeIrql7qenSWxy+w3vTzJrLg+whjzbi9fH7nt/SG/D5qbt
	 2oIRGueqDsQGHQsQIt4MFTqMlgGQe5D8OQ3jZBZbzE5sY3IsO85S3cf+oMnKnbO74J
	 CBCFWCfacrnDHSF3FsbNPzI46YhzXCrkBiYPtY06HoC1jVxZEerxozTfyGKSUfXQqi
	 HNQs53dQHboHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76BEC7EE25
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657198586.32305.6427771979478109630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230aa292fc609e2c8217a818feefed03353b9f3e9b73548c919c95caf0c6026a
Date: Mon, 12 Jun 2023 12:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686571985
