Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402CC567F
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF9EC433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690966928;
	bh=LtGKv0rYKg05O0secGS0vD0pM4SBFCGFS/YnaZcd0cw=;
	h=To:Subject:From:Date:From;
	b=JXJylDwCHVSXO95XReAVEX/IiIliIfTqUqPbUyj61JrNwrYsxfrGSFqfpuAjBUGWt
	 T0LExD2LTl2mzSbAlBogMUwTWAFHmmofnssGfxZ7Laz9cyAllnt5EQ3CR6DO/F3yV/
	 YiHmJsUXU/1q8c2T0nM81gOSRfVdi07l1gV0CnlwaD53Pn91vQLz4SGDO1ncP0oc93
	 Gjr8HE77utjdNvb+fru8Ol9ojQxlU9vR5qDxRVU/Qi1jkJADgWJ7IRrVyUMi1kp43C
	 rk6ZilWGdLpLyLaO3onOmPdsnj2tu+Xn1KEnxEl3eNUn2m67tFuZ66GTEHRfbb7gUJ
	 UchfcVO8wb3uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F3DC001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169096692866.27486.8813715287578392146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07aedfcf8adc07ade7e7d78030b720d757d761ad048ff246e3d3684bbf8d268
Date: Wed, 02 Aug 2023 09:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690966928
