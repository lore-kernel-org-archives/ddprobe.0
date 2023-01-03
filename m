Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BC333FF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C50C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672749687;
	bh=5drSypIdyYRFDcppxUEhtocXidI4TNPABElcL0FRyn0=;
	h=To:Subject:From:Date:From;
	b=i5EeUYp0y5n/rzpAQRyyqOl5FIVlikeCXL6+D348JFs/cqDGEf97vEG7Nak67FF/a
	 6QhmB2K59pLzG4MHS3WrmwLdS1jBJm6LxJ4x2wQ+ySnehI/4BZS2TtRDWVH8bJe4MP
	 IZ62rmpu4mjkv8iKUxtOV9T8bLrm9q+WehhBDyJumoSF4YDkcVPjjwJ4sdYWGNCjE4
	 vfxheHJC+EjIc+wWMU5mjB3SP5H0RH1UxITJ7AcpmpP0VDo/ipxqbvpkeMROd/7FBA
	 CvTgK6XQaI3o2oi+H+ceJcPtR4/HoLkR1c6ZE7L1WllWpxk1tLzTvJpv2Hsngmfh/8
	 7LO/6bvt5Lmww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D2AC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274968741.6572.8931741241605547831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80996d9d2363ceed4ad2313b04bbc4086ecaea205f07c8f82a8823d194f59860
Date: Tue, 03 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672749687
