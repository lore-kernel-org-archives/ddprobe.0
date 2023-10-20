Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBF18029
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9yyL5hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94EA6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697800096;
	bh=O8YW7hzgsrjyk69/Qzux5zCUJ64G1m+dJKq3at+M2Ps=;
	h=To:Subject:From:Date:From;
	b=C9yyL5hGakheU1ce7v26IX8aFy1Q83TV/MJgyqQjQc6+c9wr8PAMJB0HhkE4VQGfo
	 UhOdj3R2CyY7R7cgQlTjb9/aRRlaQupPfh0TOrVhLNsNwmeqCojNBePBwi22urWGqk
	 1A+BCsCYkCGMeS+qkef4gUBVRVoHzrh+tK8ngUiMPh8ZL8J7SHUjpL6kAXTl7vk5Jt
	 Cjs5nzvo8pg/9OnzAK9gxb1R/UsJpd4fURnkugaa4cZCz4xsCc39DBEvNpysuq7SnC
	 JPITLXigagpX1xSy4FZ5NmwcFS3JC59UsXoj8iaWiZ8EEOY+N1LW0mBWTL5e2qV4GA
	 dKDVYp7ExxAww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E94ECDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169780009644.16334.5422061576724144181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce862d8ee93ce2462aeb64e884c8d1175b3cefdb8cf31bf026f4f8276727b77
Date: Fri, 20 Oct 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697800096
