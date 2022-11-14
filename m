Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED1E256D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE2FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668418854;
	bh=lAl+45+FWGid4tH9lYG2775IfQgifw/UpHQXX+RQtFA=;
	h=To:Subject:From:Date:From;
	b=rF92IkvPIlzLwcB3jGSydUWJcw7NnaVzqXRmNGlv+Pz3XgLuW2hPdB1Lv8CpPXtaD
	 seppschNQ+54ua457PqF4hESg+WyLAWruisvquzXYCy+xyjCCLHG/SqcgjGJDQJ3mS
	 lTwZT2TZWZVCdY5xs/z0nh8Vq1vUmpnzB2HryE8wFsgWPkdzgSZNtOicYBfAneMRCd
	 l0rqT8wm1G2fOqs0SxLDLYXl/x6PI8kY9iCY8RKnHTTsX7kXQH+6MwPAse465XjE/5
	 GnsrKsKhIBDucYPGxRTG7iV+VTYAmmVx/Wu6ADiJoIn2gAxfd+d0k38m8uagGe4PG7
	 v54G5CCkWYWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574A0C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841885434.3813.8082897210381383561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5073a2b48a857de01c293a234fb214e70139a23e88226a8d05e49840ed4638ab
Date: Mon, 14 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668418854
