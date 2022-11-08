Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88C48C09
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 823F2C433B5
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667925654;
	bh=5GBO/ztctwzD337XlFH2xIiIuN2xwjR6NSx3TmMgi7Q=;
	h=To:Subject:From:Date:From;
	b=EvyT1tLe5xc4y4t8S1QGuSr/NhxkS9NIi3vtwhv/oM9uRR0nAxT1VEm2eD2vEf1Zw
	 oLItSaRYufcPxEctpv8Ssba2oDqqUuur6GdGHh3rDzG2GhZ0b4KGUePedyuVS/qZrm
	 AjVUzSWi87LU2ysMOzTYli7Qg8T+pbpQ2kEU4e3xHehGseLvKm6VwFX3Gscb7zjrMU
	 BpNKH2iCCgl+h8jyfFcINQz55KSKx/DBrPtB17uqqoUe27ESNy4zCdwAl0vPz5FFpY
	 jd6n2gLP8BcQKwmDhwJdiyTzKRVRCrh+z4AU4eG1ofRdj0Z7M81uxgBLXikYj71Gii
	 T9z06Kalk//nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F80AC43217
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792565437.6776.17939067568535957922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ba518236af9fa7ffca93787917d74a1b8313fcc515a613dc7654f22f369c1e
Date: Tue, 08 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667925654
