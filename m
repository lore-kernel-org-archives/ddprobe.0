Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29C7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649065378;
	h=To:Subject:From:Message-Id:Date;
	bh=CiaQTnT6x7Ja/23ncn0/drt7flcxpDgFURTF4XxwYFE=;
	b=Mxa4/A3dX73+uEgveWaOJF8aRwrTn2kzkkGoH6uZDhrvoSZMJg8XcxDUEMUxKxg4
	+1fGXq5fnohY5pUpcYEiLuSUhyHpLYq0MaQQMTxJszFX3Y6qTReL7im2c8B7SyOihCU
	KoISwJg8A4k/dpuikMZCV2A68CeU89k9bvYRnm4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649065378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CiaQTnT6x7Ja/23ncn0/drt7flcxpDgFURTF4XxwYFE=;
	b=cQqub8qLpVhSy8GYBE6jCNDc8+gzU3prpfkar0ZiKGfoa65ORCYS2u73ynwVxOCy
	ny8ygLHjBftChWxqjRKmcDF7CGpmMcZh6UVUPHSX47FrIyRn5tElK6lWOzxVUMgyB1Z
	UViDhsmvwfpm//xZaBs3Zzo3zRVZWAmQxMDrWpqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff3f4c218-a22d0a1b-f87d-4b98-b29f-2d99c8a09f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 028059476b403c862f35ceb0a8055b911101c79e20c5253fba1114d53d5f6078
Date: Mon, 4 Apr 2022 09:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649065378
