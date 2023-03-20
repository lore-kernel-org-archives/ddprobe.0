Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500CBA23
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021DEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679294226;
	bh=sqj+k3Gza9Z42dG+caL7hMkl4sfFvrIYE+0aa/PZDnY=;
	h=To:Subject:From:Date:From;
	b=NLmTc9yDunz16ZKd1WpajEVmAYSF7OHT0JbmrylbKR+hWGVoxSRoRmAckLhlGcxNN
	 5BZc3J8qRpVlGHFwcbrwCzzoRFjQH8PnT8LnlXN7S0Gfyu+izuD/j6n9Y6AT8vK4uk
	 mjR5vIKZLlC1UkiZ6IUJnZeX89KOSg+b9xleFKHYCf0X0wXMhLu5Q4COHKoPcKFIIR
	 +wxQ3X350MNPiDAGYVs+1u/JPtPcRJUH1AJN/oMq947fQ9da73KmoHk6U1lnTXHg6F
	 uRcWJbq3dmcu68BNUL7IhwreAfTk+C8WZChBQFZoYXLCP4eYPcuSMtF3iZAS8Ei4EH
	 uMimB3waSWqGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E0FC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929422582.3279.380266950818239415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9058401079415002be28cb3116289a9903d8ebff0f069255872e54180c6b407e
Date: Mon, 20 Mar 2023 06:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679294225
