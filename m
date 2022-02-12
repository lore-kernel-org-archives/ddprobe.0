Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5D1211E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 10:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644660025;
	h=To:Subject:From:Message-Id:Date;
	bh=HLIxYooDeliDEJHtO0WXlVRc1xUhICpa+fiGZMxnE0c=;
	b=G9SfSRlCWdunhkg6yIprwgM4qWK95AwOHjlBGfT6jz6QddjeuzMzktqFNS+1129y
	riuiYY4q9bNRDw7+9U0VOdnY6UTR1WWBLTo7W4deuB02x6JS/1Tk53ncBLjByQx0NJL
	u68f0Pc7Rchk/ln4/OUJ1kJzXvpinVTTbEUZmDPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644660025;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HLIxYooDeliDEJHtO0WXlVRc1xUhICpa+fiGZMxnE0c=;
	b=QAwIFgwY29HqNqSngoRzjx4vV10LNFN7Nuw5iFEH/mjA9sk3jWVYdsnMZ7IPPf3F
	Ux6kls+geTFKAIhIE5bgdZNW+9aVlrsXS2rbnnl/oQARo2NR1XZiKDztOTrwxnSTv6b
	1VXSFIUCkmoQJTnGrXOMvwMeXHo4vl9SEENmWDxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed606640-89e5f222-7d0d-4cf1-be84-fb6441378104-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7048442c79298941d975439b622b00d64249590fcdc8c5c2188eb317ceeb920
Date: Sat, 12 Feb 2022 10:00:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644660024
