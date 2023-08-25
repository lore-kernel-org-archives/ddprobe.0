Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597CD621
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 01:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9706C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692926648;
	bh=TeouLtFNqT8h89wNJL9vbDKJoAwwiAJCspQhfYndUjA=;
	h=To:Subject:From:Date:From;
	b=L/ZV4aY47hScjjThe1EiSyQpT4T2M2qUtAgpRNisHjq99wskwLrclLN1IPONLW9cu
	 7ux/AOhnf2Q1P5uVAgiX3IAd3qr5hTi3isgQlgvhrhh7fmifzbs66WAwpV3rhjOLt/
	 17sRM9U/m1dKn5r5kF7uiHEEW+NZhTZ9ypro/8oSj4flSIYhRo3VIuFSeQfNI8gOu/
	 Vazepg4RSDQNxLOpwNm/Q4Hgb8a++IQloniGhPPkKNFAGtz2mJDj4UvLfb5or1GSaO
	 LgwmpxIUVwKT/CVqvtc/i9HRidMSJGkI0QjzxeAkjV96K0g56LLzcC8E3lw5STl+Om
	 1OgsYBnqBbbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC78DC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169292664869.9161.122043941166100086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557d600ac042c5d9a53098207b9308aeebb1a8d3f25a2fe2e2ec433d38d8c04b
Date: Fri, 25 Aug 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692926648
