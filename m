Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3416466A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 15:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645544785;
	h=To:Subject:From:Message-Id:Date;
	bh=THGfG/wicgXgZPiAHgqLUAWZ2RooLzcMZYo8M3sPQAo=;
	b=WHHzAkjDpHhO4jcrOQNs6bGm8uFAA4dXAXhLbdQB8lmDb/vrAB84LXZEkQKkBjTt
	GgEPmjyyJj70cdvXizGWjYLXSfe4vGPL+pArnqUY/zg+Sur9sItR1JkS4lTitKzM+Vj
	VNiTyZg68zow4IgAP0nrjDg2Doar2AZ9CbYLtxMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645544785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=THGfG/wicgXgZPiAHgqLUAWZ2RooLzcMZYo8M3sPQAo=;
	b=VDx7rwvXYEYFsbkcy7+uzBuO2QEO+/5LgLZ9pYsQGEKDi6fD8PEVCzZXNGuHyMHD
	gnixQYV9u5mCSOFMHoMIq3Y9LA29opakcb3Gg935+VXFZON2qL02tXE8Y+c6esoNgg2
	TOFrSnUP6C3lilv4NHMWeRIz1e6aKXnJrWFHXIPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f221cc388-4f65101b-c2f7-47bd-945b-418dd7a17021-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c91effca6b6898fe801178610b51de94633a5b2c885d40113c5caad1373f2ad0
Date: Tue, 22 Feb 2022 15:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645544784
