Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229D72575
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657300012;
	h=To:Subject:From:Message-Id:Date;
	bh=N4EpauxB0AJQ3VTuaaY+XqFOZFsm6P8q/PT9l+iInH0=;
	b=AXq7J38W981UiEd+/ptyLigK892yO38JAxrw5U8VCkRy8s9r3BxKuo9QHzkSwHku
	ECXZwwYBUC4yFaIqOI5Uz6YZOtAkMLEBqq7OzvHNZzxUSgwV2R2W8KGdrRnQ1hUJhba
	7xdBhp8zJqhJnGsh/PrZRRiz8hB4BnXqj6cYBszY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657300012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N4EpauxB0AJQ3VTuaaY+XqFOZFsm6P8q/PT9l+iInH0=;
	b=XKW+GJ9c17cS1/7o5+JsF7I6/WWQ98QxSwrcNs3fPNoRl1rn/UPHYT7LG9ruwXM+
	i9Td0Un1q3Cw+zg2EB68kFLQIgQjLhKzv/n7isuHazjO9k5rEmJ4dRLiGfl4jQa/nrW
	KiIyMc/vS0bMOSzfg+H4NgdT9g89FOVRklfgkYLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dec74d48-f55414b1-6589-44b4-b531-56c86fd1efe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a86a50a79e2d64ae9a76df977be4476fdadec64d65295dc3e797c95e3b881408
Date: Fri, 8 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657300012
