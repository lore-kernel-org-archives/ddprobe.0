Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4A37C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644955585;
	h=To:Subject:From:Message-Id:Date;
	bh=Vtas7XuaPIrZN7C0DW83p7BkreBXfXWswhCBSCOebm0=;
	b=BxaDbPcJj6PbIXPWRS+67URGxDHbgrP0VZSWpipH9e3yQNE6c69yKJUCzOA2qurO
	sH4cbWzX54xxLVw83K/pUtVx3BptUtkuRqjs3L3ESyCFoNg0C39bhVPt3LuJ9Ii5NMw
	+A5nJxGDKJvzVHBflYROgqdz8PrQUbrU3b4LKyqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644955585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vtas7XuaPIrZN7C0DW83p7BkreBXfXWswhCBSCOebm0=;
	b=Spw4TiUNXJC+GTL8SRIgHH+8zV4e/u/no5PDIp3wnmZexorR1t+L5806iEyeOEn0
	yzpFPoZEYA6r85CqQg4IamM7WoVtbLdHkXG+63br+QAbkdA/btxaCm8yD2r6nBFsXW+
	zzJNvc+xghr6x35kebaTaOF1wE0MQwU+XllANjNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efefe48e2-849b5b10-fcaa-455e-9014-d098a3e391c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa44a4a84195b4f5e4d434992676f02d8fc35705375451f66afb281b03077868
Date: Tue, 15 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644955584
