Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB3046AB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD58BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688572028;
	bh=VCC4pQnfYHgSdR+cnvindDeKAwnJh+7WgVEBKdEeAss=;
	h=To:Subject:From:Date:From;
	b=joVT8iFB8YYSyrUik17yx0GDAtKsSzw6QrAwHWo6CE/kSSjDVza976ONFTOsQPLSF
	 Uev2F1tdRYMBe0GLqeyO3VDU3nmLRGG8errisT6/RQx/aqeb8ScYB/ksnRYbqr/cRw
	 Pd22JIizCZJUrdSUc9hgDITMoUBu0KXjT6NXfr7UWdLycFlgNIwR+/aI+vyrAmuW1Y
	 m3229MXwizl3A4Yc6O2ildBzIQ70xrGGgWO/VZ3/blqAHqsvhZ7h0sRbRN3f7e1Txp
	 SWRMrTJgOdBhJlgrfTEUWuZ2GQHGpduWGLKSattogJ82zjNpB+xezysc+6+MINPCED
	 VFRs/67zi/MyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0742EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857202869.9057.17689007789281005656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078169fdcba44899a871899a996b4230e8227ef2c64f31a040b1422c20ad565b
Date: Wed, 05 Jul 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688572028
