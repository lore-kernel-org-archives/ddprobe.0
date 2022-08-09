Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4994A23D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660038652;
	h=To:Subject:From:Message-Id:Date;
	bh=NNvlEBWQHWKD+FRGHW2Ml3OS+MaV1Rs3zjv6a/4EPpU=;
	b=LmJ5dNr+VXPCAAYGQoV26itrCVHK+cB0cRLjmDdA7FZGXKvXWb1Dq5BnV7ycVC11
	yo4idO6lbFjw/cwZf3QLpZBTQ4S04FIc1vBjsR8aG0fvuz1vIc9bvt9cAp5UJN2hMF/
	9YMKqrYsKip7PfQkc1CZ7xj+bh6hFFXzZlL6bCls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660038652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NNvlEBWQHWKD+FRGHW2Ml3OS+MaV1Rs3zjv6a/4EPpU=;
	b=Qw6kFNYdPVE8Jwp33uEdnJ6Zoni54/W2IFqawOvxgt9mtbaF00YDucFUBS0QAE8L
	uSHJJjVNGCgfdsugpJd1DK5ocFO9qJAMgoSOhPD4EZnCGbPitoP8tphfUq8TFBq8ieF
	8Pj+sVesBAtOSqWYThPgU1HXEhxDdsj8Rj+U6mr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828203a289-51dad984-eae5-4c76-94e3-c726b6425276-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3afe2b7cfe295baea6b83737d00f40a65a289f31b2d0c4711353ab02f33cc9d
Date: Tue, 9 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660038652
