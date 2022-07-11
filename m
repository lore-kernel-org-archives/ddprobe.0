Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E0E4C91
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657569412;
	h=To:Subject:From:Message-Id:Date;
	bh=yJD7aXlsLRStyLKwgEr2gYQHWGBlqJq16893wiEGufQ=;
	b=BAoISYY67Ci/PvtEOuY66MKvXEI3mqb8F8pkvgjq0fjqU3hqtWBmBnoX9jZAk3l7
	tMwUTQ9jWYx5yEwv9xpWtICLMrfWXaPdp5JBmnGd+vqSNsGxolXiGqtVKkCUBaqkmtJ
	b/cFVf13hBUFKxh+BPfJiMLrtF5SOPZHsMW76/rU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657569412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yJD7aXlsLRStyLKwgEr2gYQHWGBlqJq16893wiEGufQ=;
	b=Ai2p3J0jPcohB+oEkmfSR9frJ2JUf6TfN3373noTrfWu1WEezO8AIl1kR4H/6VGO
	+DveUlCz0vFwBdI6cjV6ZhAkK2CpE49GHFxZjELCAbIr5OpOjZXHySdyXqJ6VL8jW36
	GjKaEdg2xiw6TCaVnvoB8repeRYGCuta5iTOxxqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eed604b9-dac54138-45de-4dbc-a673-da2f686cbf84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7205e8687acfe4d8f47d59f771463013bfe2969bcc9f2cfaf6a5211af587a9e4
Date: Mon, 11 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657569412
