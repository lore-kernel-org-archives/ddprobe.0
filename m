Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432C82F5A
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F26C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677587165;
	bh=zqone1kSBn6lkKymfMk8qU/Fo4iACxudEoqs6SaNCdo=;
	h=To:Subject:From:Date:From;
	b=fCj/WTj1/H5Rxc0rf55p0DukerWpn2qN9RtJTn6DPeuZcYCDvn9C+Xwh8qkTCz8oL
	 UxcDobg4mauCoddslMc5rT3zgeFxQgNzkAOVzVUIIQREFX5KJp11Fd+Vq8IhMCZng6
	 p1HZKO+v3es3Fv6AGt8k8uCp/kzm0LCbNO/ViA02/SB69x0fiNBz4j9mlpkLZyvVG3
	 l2Zjzc69VLJC+xlKdMVmVSbOwdhu0LM9rQ8Y8bVfTbDIj0Dg6f4i33HDJmd4AX4DcP
	 peBwM/Y3k+Rt6rIBNZo0+QpuiQx2ExfswHJbHyBbuFJdqGVFO+VyBFYReGQjcrEuaA
	 ngNhMvkQ5rzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A81C64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 12:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758716580.22768.15192734295221422973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0548ac9436b9f3772fe0da4a7d9f452aa7ee4cb43872c5381426006bb4a710
Date: Tue, 28 Feb 2023 12:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677587165
