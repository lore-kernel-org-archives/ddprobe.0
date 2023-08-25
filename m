Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C10DA41
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6482C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692938048;
	bh=UEIdahe48C9/j0buoob4cWpiNAWsteQWGNusrOX+aG8=;
	h=To:Subject:From:Date:From;
	b=ty2BcMND1LSapcPLic8jtpRScLM/ePvSdCCrwvL6X87YiwlnSzsmjR2gjXOHYb+mK
	 8KbvpYvoIkGH2i0jeHM22QlWh5wntgg7//AKSmJKeQzXNmJ/qHKZUYMKsJUoO7a9P+
	 MBQ8j8NbCoBY1yfdT9tV3APJcX7LbcqKL9XBrwmD/SuNf8x/RTYkPkdyGmlZA5Tqgw
	 F5j/0y1itUMODcieaS5b5pSEU/4aqXfmAjAnFCx8HFldNgvE67CvsjzXWaNlbU9iqo
	 86DzdxWLpm9Q6cmGt3DSoU34sNZqYf1sQein4ePVW1z0gXTbDXAVUhadzvaOkpxftB
	 n8+VS6vYco8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21BDC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293804868.23608.15703377080038957879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87267696c9d720409bdd63461af73cf1b3622163b25983a6c712bbce12ecb72
Date: Fri, 25 Aug 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692938048
