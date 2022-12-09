Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17192F3D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EC9C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670598087;
	bh=LwPKqtO06ujQC8IT/MAeBOFzbommbHwUFGsD26fmHzM=;
	h=To:Subject:From:Date:From;
	b=KNfDL8pD+qDLrkAP+edrHLZb14JumwhGR6lGZtip/8aVr5qlDwaazSMpwRSHctfRh
	 hv1QWX8kigbJjQNF6fMMlzG2rZgvD0XpqZB9LbbmYsM1WuzS8Y57mbwbVPspDiWazd
	 +ye1p2deHgM5LaAhTED1vrZ1NblAoXU7C/YeGH43V0pWVqW1tjKo4Zwyc3dnq4bSZw
	 f6O+cAbhfgwusXBYXhalYk9XByxFl8xabHmj+7UzoQXA6/3gRUZdA/PcuvRzDvVX4K
	 aFU0BNBx6CzaraqhebMU3mCLOj21bqyj6HT6jBv6YDlJGDVVnN/BpT28Mfxiaxg60Q
	 5SFq64r0mcFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAC5C04FDE
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059808738.26790.9082377259437887849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567526d143e10d8aa0c1ccb1caceba0830ef218507c032a52a121eb3927e04ba
Date: Fri, 09 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670598087
