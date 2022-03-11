Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50407E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646997085;
	h=To:Subject:From:Message-Id:Date;
	bh=XySpnVLo5fq9IcVi2XneNYJCyBaufF8TEgJW/JpNEVU=;
	b=iFS7TFJOmq+wKk2VrpZjQkUU5HSKJzesPcqqFPR1t7EkV+scTtr22dv7xz9F3kWm
	4ZxzltE9Rbi4aV2ofdB3EXTyFTJwzlUbyP8m4t1Xer348fQ9w+OjDblVoeTRXeu0LiO
	FA9/m/UyThI3lK9FV3N6vUeHQMZYT7QdUhxc8HH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646997085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XySpnVLo5fq9IcVi2XneNYJCyBaufF8TEgJW/JpNEVU=;
	b=iEIxb/HfQHtYUU0/Z4NUStq6c5kFZyOaQ4HeGcO6Pur7xStCwXr7Htn2zvu/8ttP
	c40XKvnxooNUCNdcRD029m8W9DHTfA6DCihUhWj0f3ceNEqdNQDxmS3DoKYB1enUDfC
	gcFcbxmj8jyRH7R3pPouny6j5UWemDYlQrsBRH8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78ad1a43-cac764e9-1f66-4630-a984-be2cfc2691ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b88b79487baf965839916dffcbf1984240e0ece3b56bab18f05626e12a2ac10
Date: Fri, 11 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646997084
