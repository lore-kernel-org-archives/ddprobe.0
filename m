Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54DE749E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB1EC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662159653;
	bh=5OAu0Erpa5DZ6VHJ0ArESe8e/ckeogQsJDcJixxrLwA=;
	h=To:Subject:From:Date:From;
	b=Fhuk3rVHW8TosYuSAO4wFOhQmdRtVT2R3Aar6gUTogswuQC5Rjfhwgq2lKipRFKPu
	 gx40LI/PZx3i3XJGl1RIRANGz5+1+oLjTOnHtKmfqk72VlUcKmXOuFwpzsPJkEtc2s
	 3YxBO8bwfp9XjC90SKG1hZfUaRXRr/+uVqAmwqlD2mVRI/lhZSy6hqYNUmOc3v8ieJ
	 dPXSQ0Gk7GMfrfHgDX8iyajC/zibxyIR5WxawcQI4H/GTygOm9mkaOn5RGmGukPXXY
	 JK//f5xC3IX/hYG80/4f8zCqGRfyLeyM3VBaeYI4QytTO8TaUP8dtPUBuA+V5MGQ55
	 N+TUpSYQVz7fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61622ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215965336.6670.14935381018257115445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf54f67d80bbba6747ad044c920215ace8586cf3b8bc0c4b4f8c1d8c13cebc86
Date: Fri, 02 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662159653
