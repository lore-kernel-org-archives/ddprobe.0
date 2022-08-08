Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349AB7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659967252;
	h=To:Subject:From:Message-Id:Date;
	bh=7cEcAYYXa6A/7/+gHTbWUJZm++jWN3QqZbybqkEDZkg=;
	b=Mtht5aEkGgvDQocWp2rchJWHXRiS4N0EpBFJF52w3OhCa2ciB1mbafPK1VmOAiUW
	UAYaWQjSt1PRXQdgx/spnEHJuEl/wtyPUmXEhtoJRe8kBB2jDC87c6c05Bw+fHbay7W
	chDgthCfUrXz61+xyMn76Lghrtmvk6NI2xU9FaVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659967252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7cEcAYYXa6A/7/+gHTbWUJZm++jWN3QqZbybqkEDZkg=;
	b=FcsIkvc9hVG742hK2eT6vS5jxSFfq5S0ptCkErqRmqHdHKyVdRjOUIl3Xhhu/aJy
	XZo8jVnQyAxgeOqr+oM8vaY2rvtAQ4MNUJJCAohTtcWHcpP4hozsziRfa6swLer5hfq
	BT9B4yXg7z1l4Pxp6lyKvcwk/w3xCkSiQMkjNu7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827dc2281d-dcd7da28-7c84-4fe2-997b-5ac65e0986c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b78e9b44f4c69d0442cb5c4ac76bb9d3e01739ee994b70bf68191ca96d5a54e3
Date: Mon, 8 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659967252
