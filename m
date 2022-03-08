Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934F52F2B
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646698884;
	h=To:Subject:From:Message-Id:Date;
	bh=XgNX4EPP46SGV1WLyCLcXqIBCJp8UJHJ4zIvDxH3YCM=;
	b=JyoSojnjAZUZsv3ZOqnC6XD7DlOJRXJcG7W8prkRMv3njwxSL2JasaAP3Wes/bLE
	NzkM7EyacxDsSiXbtrjbA31VXf1gS50bzTO6zl4JYbw4EPFJnYX/QFhj3YLK/XCrMK4
	d0NXd8LzIQeVVF7mnuG/tyzkJHycNKwmS2JIF18Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646698884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XgNX4EPP46SGV1WLyCLcXqIBCJp8UJHJ4zIvDxH3YCM=;
	b=efyMullxf/vVkMJzDDR+0D91FvltvEvDOyY/2KnpFiiBbh1on8c2Uho7XXgYwQ5/
	QwnUBUGQaHUwyEIwB5x//7SsMDyprwdb7/9TG9PuKhdmOC7P6WJuI5/Jp3Te8Nu1Z8X
	uC4amJDMr8fJ0nOyqKyM9Fd1ln7rLu2aefR/+q64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66e6eea5-a0e1b871-f5d3-4f54-a0a1-4105e1a5ddfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d5e5cd82af07f8426fc5b32bfff551499762fbbc5f8b733269b037768e78de9
Date: Tue, 8 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646698884
