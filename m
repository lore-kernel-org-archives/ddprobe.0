Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F172F31
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 14:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B42C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 14:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676990945;
	bh=JFDRksS6d0xT4t4DOYi3aBIoUo2/zYlWnNz+/lwYkTs=;
	h=To:Subject:From:Date:From;
	b=ne4HeN5V4qJzaKXAeFOLfVQgK/33NdaMv2dtx+A2QAKY7LfCfUUSs9bbAr0fXYL7b
	 JkHGa3r58u1vxP9Hi7DC19aypnyXfFThgv0liFZumNcK/Py9xJE+NMMgXwpQLxW/+k
	 N8bYq7knPwXzRnlrsMjAcxhivako2hNoQjj6TLhSMqDmu/up68s/ggrSni0WDnErfD
	 1ynk5n4KPEyDhvDSO6D0EeAk8BymgjG/XBMiBx98UZzvnU7j/cLO3WUblf2yPS9VhG
	 O0gtOHrJs049TrO44IPy+CjaYL2S1bZraMr3MIpglW3PuBzqu4QxUaiHZHS7LT4Rbr
	 xL6lsVC1auElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32ABC636D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 14:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167699094578.24569.6890276538377368708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f915526ada23df283fba538c15046ba0f8e818563d722881482f72e279d2c97d
Date: Tue, 21 Feb 2023 14:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676990945
