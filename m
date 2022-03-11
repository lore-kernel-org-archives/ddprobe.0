Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581CB2574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647032184;
	h=To:Subject:From:Message-Id:Date;
	bh=HdoVQe+7/rDQC+8h94Jajvg7YldXp7L3wki+n4T/spo=;
	b=UlgKaZHWVba7b5ytgJphhCND9RgZtQ3e3+TRh6OdwmZzo3zteNsj/XXNqc/CzxqT
	XsL4qnsZAqWs1bErRbbJs8EOqSGzgmPUMX7iaBBF6KxXckSORKdk7dFGsa2CIh7kdgH
	uQs5H+jETgvxXQqsSsZ+Lz0Oqx/sHrgc2+nm+L98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647032184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HdoVQe+7/rDQC+8h94Jajvg7YldXp7L3wki+n4T/spo=;
	b=ND3CR1k6JkQW8lP+SDmqa11MpkBhLtU5azKYEiy2jtDnI8ImcbgVL+MYBZIFgAjF
	A7UjEtmFVGBViIWnrEQKfeUNq+xm79gdMgoqZ4pjrE81iV9GPbuZOUYqxNyhVL7uX5A
	5A4W+eHgZJrf/MHntRV+1a363evH6auh8c13cGW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ac4afa9-9edfa5b1-af4a-46ad-bcb5-f93fa749c492-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcd7d8f91039f29c39bd9406bf5b1a992fc6d7ab04bbf3d5c80c44f168136aec
Date: Fri, 11 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647032184
