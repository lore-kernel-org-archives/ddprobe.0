Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D3D7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646963784;
	h=To:Subject:From:Message-Id:Date;
	bh=3YjNPwak+vE5vXsg32G0UDXC810AG1o9MYWTmJSKXP8=;
	b=WOeK9cQQlPlTZBWg6zkwfLWYjzl5Mf1npcF7zYZVcIXC3aGb8I8AFtyAgz+EIVyc
	YaQGFImw3wCoDhvBNhBU97FuY6Sy+LrXcOeqTdEgnbZRaGArHlPWm3BGcmnZ5JSxnl4
	+mbiHiMQh/dZQpyuJfesyiHSOvFnXvnjRoPKSeQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646963784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3YjNPwak+vE5vXsg32G0UDXC810AG1o9MYWTmJSKXP8=;
	b=bKDhBjgsZqu/t5epMHng5G9HnobjT9/MUq3AyWpNl57W6OsWhVv3Li7tT9pASjqM
	FLiN2HPMTCLSttranrCMbxEiZgxBCLzcKbOsJgTvdOiTVtDP5UefRYZLlGBHIXX7p+Z
	NY5SaYIjcue4xufY24BMQAJeK0Xm1/AaR/JP5Ktg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76b0fc3f-86c8c48c-fbb2-4558-8872-d573c2ceb157-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 811ed83b11e0da97e9cc94975d78808eacc593a006ac09018b18ecac79a92620
Date: Fri, 11 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646963784
