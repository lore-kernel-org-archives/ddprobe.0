Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBC5210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652437679;
	h=To:Subject:From:Message-Id:Date;
	bh=uBZF+pN3kNkmEVB2hTDsyHZhHvk8yRF8RwXRQsQV7d4=;
	b=iDSJFfHj9Ua8sdRpnbJv1gpaqBdiz2GEn43WD/Ml+rQ/ZLsw3xo/lrDMc/OAeS25
	WHmqqZhcCIvFvpzOxYIovxr/nnNjL2NGFeyM9KlBUpYFAjhQr/QtdM+Ln30EL2f11ha
	koKDreYlkJAXvtfxfLD2MtVMQpCxrE9iBa7HRZ+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652437679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBZF+pN3kNkmEVB2hTDsyHZhHvk8yRF8RwXRQsQV7d4=;
	b=FBQMsamaWWPMfNfd4rbQ98ngaf1eAK40WUEB1ZzpUGJIvW0fpoLzil/z0MVcC9WU
	qjQaiaP82yvPwtlxJ3GSjmIF72sEYxHHqr6h9axUYq5GEAKftFCQX6f+eR4uksnqq/0
	nHoVN3VDVA8jSKAj6NpHEM7u/B3O5zCq+/ArztRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bcf5fc93-6ba21888-31b9-47de-9b2d-9fdbb994b23c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2700fefb21aca9bb23ebd40a84895179ba27e96447438f1566eea26f0bb90d9c
Date: Fri, 13 May 2022 10:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652437679
