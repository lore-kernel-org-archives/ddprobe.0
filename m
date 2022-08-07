Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8145F7C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659841253;
	h=To:Subject:From:Message-Id:Date;
	bh=AVJrH8JvD1cyu7wjEmlNXLGRAVzU4MwugYcEG2JKFNQ=;
	b=OLfIkIaqCHSr7sLU6yTvkVCR/S0/FbUXKUg3draG0MZcLttWNeoc6YfaqnSUrTjY
	UAqhi6B/Cn1aRphuhrZ+Gw2VsFcJA4lcoanwKOtdTKU/E/q2eUez7zH37rdUEetzqoZ
	CgxdWf1nCWrO6pCVnzNzLJuK9L6qYvxDSQo/vExc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659841253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AVJrH8JvD1cyu7wjEmlNXLGRAVzU4MwugYcEG2JKFNQ=;
	b=jdzysW6sPQWOLbkHsk3caWSKBCcFOVQ5GjfT8WGlVhtclBO1ZJW/eZwigQfCmuQc
	Or769wPpCMlpO+AEF0GKjexdeflWGsqs0bgrhfRXSRKI+IiPkyBmfhEzoqe4ASXTBp7
	VaDY7+r52GuZI97a3LyMLBHt65wJ7CPDy0EN88K0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182763f8cc7-28149928-7fe0-4025-b1c0-621bd9b4b1df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2f1bfa401fe356d655da82620091bf401d5c970f5ab2360e336b489ed519de6
Date: Sun, 7 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659841252
