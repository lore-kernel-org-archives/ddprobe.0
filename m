Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B6B7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 13:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654437059;
	h=To:Subject:From:Message-Id:Date;
	bh=RkVOlMlWnS4LE0dgAavJBJNMY/lp5q5gTJy0teox1XM=;
	b=TAQv7JJlCZBth/j8IBmKIFY3DkfWhjMi90unYoTcp/YiUTnwFLl+aKUAUBmIOfnX
	n4tOelNgHtnB3QBwzm2KC6L2nXVKIuurgUcKwpn3FQTVB3ijRaZzNOwkGjRifQSAy+T
	8nCjzjXxhS3Mgl/ouiyUHOFy8v/00e0qJ1tD44sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654437059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkVOlMlWnS4LE0dgAavJBJNMY/lp5q5gTJy0teox1XM=;
	b=d9+WMwezVWWnG9F6O3YrICx6NnT/Pco0RQA7Le2JViLk69Uae7l7dGXSLg3GTxv/
	0sdo1Lvq2Ryyha1rFv+GHlFKTbmS/ZIaMc9nR2tEeQWzSGGKSfTQZLU8JIkw6+FIl9s
	5gvXyvXJ3dQMGxtelBZtAfpsPItZYsjpVK0vDGWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134221b29-d1c98b5a-ddf0-4e4a-86f6-867647613efc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9875f41c612c3a269c0c512bcfa536863ebc11d3475f7ea69913e471c6c5ca1
Date: Sun, 5 Jun 2022 13:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654437059
