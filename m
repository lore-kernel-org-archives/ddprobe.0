Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3B92100
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 09:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649323018;
	h=To:Subject:From:Message-Id:Date;
	bh=4ilrij056gWo5DJXNWhtkqVRG3H1fxEwAI8ZbPHUu3E=;
	b=H4NoDZGiV4ViqvQqCssBxuD6tp9kNvyyOBwO5pB8kMdX7KQwC55ScLUxAhSy7n3Z
	YWw366KC/4hqNxHtNdDFmrEv0T8pPfnzKjNU4tsoutLiKqorrzyP4OJoIuWTgqQM5Fl
	or0Wk+sE+G2G4O20CEtfKKZBhascSJxwBc9WzXqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649323018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ilrij056gWo5DJXNWhtkqVRG3H1fxEwAI8ZbPHUu3E=;
	b=jkAOb+akg54k4siZx+x6o9lFLzhurTXpp9LDv+tQJZLTx+KyTFnaAd8HNE1aQY2R
	F+a8re0xma2Dwelb+hMG8PK493cYUSuHXgiEq4xxSoJHTFL94wcBFyyqUema8oPGHxZ
	R9HOHgrsJJX54Pl2Dfa0h5aydr4rS0xA6hm3nlV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180035007eb-565d64f2-99a2-4b02-a88d-407add081df0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fb43c03f4ec13ae3ac049cbd6649072c81d2fa6496f2768c1d0963ddc638433
Date: Thu, 7 Apr 2022 09:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649323018
