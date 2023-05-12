Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667EE200AE
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02F78C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683915306;
	bh=J7GdCkat+h7I6W3ZV36glk7Az1j5/myDQoZXQXrcgtk=;
	h=To:Subject:From:Date:From;
	b=Ob8DlvNSw2DbpMnO8p90otQTqH/nI4hOZf7W2U8HSq2L7MaIoYfE4uFPVOCPWs/d4
	 g2YyCQ7LVLgPADXm9yO+iLZ8Q0A5O5KuTJhhqYvRyZ/EACKbPT92S/GwwaFNUF9F/s
	 r8SudsoIDpg4JhLmAXwPlgsUnp0xF6m1mflA7oJqYK8lGOa6uAKNU1C1Eb1qiz/p5E
	 /q34IRirQhfI7Jatb/cc9k7Susu/4qbYFcsX6kYi0T4QjsFGKaNXBygD/F64gEYmJ1
	 e7WWNaBAze1Hv87YTqVHksA2oO8uYRN2LV9ucu8kMx7ZjDze9u/2eps87cWP/oWoXx
	 iyLtgGe+zoG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5DA0C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391530584.22793.76484779379038433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf0fc4618bde88a7e8460b67aacabef5d1a30fb73589709120c6acdf365cbb2
Date: Fri, 12 May 2023 18:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683915305
