Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDAD46B3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657731412;
	h=To:Subject:From:Message-Id:Date;
	bh=xTD+eXTkzJBVMcysE1zQveTTl7FHGFa+RLFT0ix2Z2k=;
	b=EspGFSqGj/vbVdG9i4R4HHC0RYOC0jV8T/lRd23x85doMtuvO/j95gdPOfGjdahf
	6fiW4TbdQTL/Q4a3fYJRFD8XtMuBwMIVOoLjq8IIWd67y6X7dr6QpNlVkzeoqBA2se7
	wYsfhWbvExAxJqp+d/wLBZmY0RB6y0ZV3yNvnE4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657731412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xTD+eXTkzJBVMcysE1zQveTTl7FHGFa+RLFT0ix2Z2k=;
	b=FdmA5y5dZ6XfIfB26RTzMATTXAFa+BnwwTknjYCzfnKtZ7UAzBfZjo9dgN1I3DkG
	4ZJ7XISdMhIHJQZpR1qtNzEe35qv5YvpUJ89jE4/NYX2L9RKzDyeDPKZNCB7nwWmj04
	ApVvvcAPpeF7Q2mhg5YXEQPGRnTGZr2GqtITiKtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f87df167-21603675-0ebb-47f1-a574-b90a0cdc0980-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29a22dfcf85e5f9076a98b5fcb1b36a48238e17e6bd90b82fd540c9a850440b6
Date: Wed, 13 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657731412
