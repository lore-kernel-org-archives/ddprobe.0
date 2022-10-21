Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB94F7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C17CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666389053;
	bh=a3QtpBTLYRe8qq7FO2MFYRDwvCVRsf8MDg6uQl8ipWo=;
	h=To:Subject:From:Date:From;
	b=sJ6MkdFmouzTORWUrbUyQL+OMku+Q3DCSS6fk2h/RhhpxEyWMVC6B3DxBcvS5ffbv
	 BgVuXYWc/dLtVbtHn9o0xTWdzqVxgExu2NTLJI6jmoZqPJJ7G7uDqz3YOGhB+K4OYp
	 iNzSroIpS8ur44CsFdsUZ/fTNsJQ0LHElzKP8k7n+4+4s+zf/4SQWnPX29nlhL/qcs
	 lmjIXLYXsmOZA2nJv6a2aRA8Qefclo/NySFVhpQ6Osg31Q0LINl45c4nACRZw09Ad8
	 /sryUUfXw1sld0GzfayyQ+yFPq/QKxLgTOT+QVb6WX62cKq8abRVpUWCtoJbw+V/vZ
	 ZkPrRkgVakdSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D82C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638905333.10747.2084705976868201279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745092c50ad24e99cf81688296d5d97747e39eb4d961c0c22a05a56eff43d724
Date: Fri, 21 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666389053
