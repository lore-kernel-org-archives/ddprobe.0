Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80574320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646031084;
	h=To:Subject:From:Message-Id:Date;
	bh=RLVZWw2GDOGPV+/QmPf2Sr3b+ME1Vr5RjwJMlQeqNdw=;
	b=UXraihqR5kY3nlKN2EjuV35JOMFQJsl9UESAYDb8CNjFqyGA4/9gi/mdXhw4os3v
	4k9EEISSLtBrADCwJTNAqjgLjVK4ajF9bgvZk5+jQj5B+imSshgBcEIUMNnQfAqyZZw
	oz1VK/hb5exxArtMMOQrDS7tiYsX6DSYKY+aoZMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646031084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLVZWw2GDOGPV+/QmPf2Sr3b+ME1Vr5RjwJMlQeqNdw=;
	b=iqrFTtEsDrAUVZZXdbE+tlSwZcOC/ph8w7BPenZK6BnWVmeikPXH7XUtjbfe2RDR
	HEJyBXeAw452v/Kwa1PIC0bpXio/Z0tW2a8XIaRekLmXG0KQzISUvHs3sPYawQP7OzD
	cQGDwxzG9S6VXLKCwo4tVrwzvXv+qpHDVsL6sYRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f191d0d-ce1e32f5-57d1-4eb0-9eb6-7725c1528c0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2076e4b3eca8beb35293cb0cbf9fd98adb421d7e801985f803c261441bfb959d
Date: Mon, 28 Feb 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646031084
