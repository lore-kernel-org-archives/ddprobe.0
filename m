Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB787ED0
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76983C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669135254;
	bh=YdiRSXbcxx4Atf0egW52n7CcJpwxpwvBfnlqPMKtIrY=;
	h=To:Subject:From:Date:From;
	b=j+HKoOLbyfProS5Wwg7SrZjOI5Y24v9pwKvw7z6ykhgFu6LJTwhZRcAP5JNUlsY7z
	 sz2CBMqkeVPQStwS87lBhTvI+kprdkgRFbBQos7itixgVJ0guiZi8tFBcc44T7qQ2i
	 7chQN3kjamidk+l/YlqW4iSZr6TfqLj38U1LHu1+XtxO3rItnAAMbw0HROrvzjuGts
	 ktKPNdexdyhVcQoF6k8Ddkm7XDCjvDntpEvnMHGShuPwjR02Em+VdiSdpdndl7UnfL
	 jRDHJUNQE/tVghRPa6u5EPz/i4toja/sUQ/Iv7F0mYkwP9wi4R14mNhoK5r9GfzKiT
	 8jnCE7TF5z4lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57769C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913525434.2545.13144569370719709426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e38bac4f105f41716d1204e0defea4d02c856a0f9d1490c3556bbfeae07c42
Date: Tue, 22 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669135254
