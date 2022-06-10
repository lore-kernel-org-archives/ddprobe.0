Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F497C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 15:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654873739;
	h=To:Subject:From:Message-Id:Date;
	bh=Hgbv5SnjrtPSzft7QVGZOVxXcJK9GnTRGAnOp9HycQ4=;
	b=bJzFnsYFla0ylq04+WfRg8Sy7Jjni7hU/qnQejbJRa+gru3rEJF1zXcZURQ8z7nQ
	nEReTnMqVRzWYWVbvXbnY82gU5w0s8de9priNwPGGYwNAotl7ttSaXr2SnG00I7uj+t
	2oOVqqwKDaWTaekb6oJBW2AzI80hDWVsZmkTkn/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654873739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hgbv5SnjrtPSzft7QVGZOVxXcJK9GnTRGAnOp9HycQ4=;
	b=Rg1s4alajYyt2OuyVZPlhRroIZYBUZruPcJxVZQMuIT/U+HzVchLGE+rEtCvJEYO
	rDLwWuON6ae2fWyaBqHUfuxK1Vvz5VT0RwLQM2GjxIDK+5tMRT1fwhkgcIT8jNeSODG
	Utt46dGsHGNo1WjHgXMjIx4xiwlUwNRG3ouoAJ3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e294ff1-99e4ecdf-3361-48e4-bf27-91449a28556d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84618a3da611590a364354f427740e9d7037e724867fc2027b6f9398192df54f
Date: Fri, 10 Jun 2022 15:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654873739
