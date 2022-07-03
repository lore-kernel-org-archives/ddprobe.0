Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27F82CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656881213;
	h=To:Subject:From:Message-Id:Date;
	bh=MV9eWWWf5eNpUPtbIJxrz5wzRC+aH4zC0QZUkmqmZRo=;
	b=ZEHAwy2eWxmRHTVXEpJ4AEvzBLNhZlR3GvG/yg8CKIdE3Z28qEd7PM/GFcP/wOup
	4aZoPT3zwVo8S0qLBt+pRHGiOTENYZBuKtuguvtnwh02xtPsyIKVFi6M+bLkqZcmfef
	UcTWftt3RYVB9PT5hQq+KTPyZioP+rwD+RhuqL00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656881213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MV9eWWWf5eNpUPtbIJxrz5wzRC+aH4zC0QZUkmqmZRo=;
	b=aWrIDZDXfWNN0CMCcYG6gbBUsmQpqHg2obe4woHG/akP2cj7W9oQuCI5bRXCJrEM
	5IMAyjnZILoywFniEEofy4LBT6llts9mjBgCLm/G7HtsyHcrjSn8A8laKbYUzszzzd9
	hr8sNXxNMNPxSAGfIQsd2btmgWk2JZrc131joDcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5d0ebb1-f7547c72-9b30-46c3-8bcf-b696764a8406-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b93175cf948d02835bdce266f06e59ca904b66c7bf93c2d26df3c8ab7b92e8a
Date: Sun, 3 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656881212
