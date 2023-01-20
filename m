Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FC120FD
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEA6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674233525;
	bh=psUC+B6cXh21TnN+J8hO8UoKKeV7rf1ka9OqXP0fq2Y=;
	h=To:Subject:From:Date:From;
	b=K9JVlRo5FQ4Ke3SDDKNnGi8bJLym+8dHidHXIGPiUuW8CNNkYS+CdpI2G1MqmBpcD
	 +txG/fU84yuVmHNHG+CBe9frYHZtYfkuxj80LGIRov7uIiyjCxdRdDttgHajSdNZhY
	 LZQLp46/K7Hhs7qc9W59yGCc9KC2qnrEzfSDT3WqnMJkN0Umgnu1XMcgYmicxIJSW6
	 ECCV6DyDRyLQW3X3taU8KWm3tZPo5XuvHcPHaCYrSWqv/LN5Utm4lNgZC5h3fgH/h7
	 pAp5TXYt7EHkgxKlp6hstuSzu7rB6sCWcF3DEjB/df9VGpT8pKZLPMZKNeGfxt/L9z
	 VVKoJ6xQkPjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9D9C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423352577.24790.50253254373026484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f00f5c41228dfa2b33280d53f6ff0c9a229c5a7f22ad460f9b9aca0e6fb5d25
Date: Fri, 20 Jan 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674233525
