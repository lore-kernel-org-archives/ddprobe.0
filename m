Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B4C7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6185C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681496585;
	bh=BCIy6+ouYN/cjuj9ShxcoSspQOF1m5A/oOuQQvrZsmg=;
	h=To:Subject:From:Date:From;
	b=ur/m9JfOfX8PpraW9QnT8nWktxm1kVHYo8sfmxr0jDQoPvEQrdGavucjmqkfl3c3n
	 WjrK1UBQo432zwoCmAUAHzIU/CCoBiBHg8MgYpALwKYM+fkLftAo4hd8O9gha9ofyk
	 4eHv92BPonfkfeZD8i+FUT3+KSmTrLMbIWlle/KdmmkH7O7Qeh8/YtqfJStNow+vub
	 Cq5A8GxWemIAZlcWSELqF3IhGZHlcENpQzQPX0vfzhNnVwycqCbhb0YEo5sp3dywMW
	 pkCPHpeDnWKQN+0HN5lYN53Wn3aOFvLR6q6VGPOzph4Ab/lkm8FTx4NuWQCdzvy/uC
	 UNqJLYuHrR0yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB2EC77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149658576.11967.16523989612430617416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c554d0682d80d3aeac37351d725e6e512a172a0bc458a7a67ba3c34bf7f4f629
Date: Fri, 14 Apr 2023 18:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681496585
