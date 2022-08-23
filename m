Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632AA5E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661258453;
	h=To:Subject:From:Message-Id:Date;
	bh=uF5Zeqkp25FXwDvlxyOnVqR33DpvYWyul0vGKeeKKCQ=;
	b=UaxzakL7A7GVQTA/75YtKFr9DcVna07D3v6r2IZXthFWHzNlN61raFj0ELKG8Hxz
	7DyLSGo68N24aTU/QivX7GciZwjmzu6focfWQt0TMsKWRZ1wlOwRYCRAfUJd3YKZUAi
	oUz5QWlwO9IGb9Cc84oulIg4XbMsDByVBXGYtWG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661258453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uF5Zeqkp25FXwDvlxyOnVqR33DpvYWyul0vGKeeKKCQ=;
	b=AVy32nQZFVfw1wp+ZjH79e0RwAk9oRm6FQIkTyF+8ZYFkB7HuI2zeM9xYGfMmlW7
	mdWKPkDTfh+xVYKlxL7eSoGr39KtlMk5ZKD+pyYkwPGonFm+JI2sJQaVMfwkzu/zvFt
	VhgpfySP2BrNYkoOjID6mGS6fZmuhib+Ydbw6Fcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cab84e72-ad78fce6-4f41-4373-9c18-472c165c1f1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 508db76b796c3747bd24c32006a0e12fd588891711fb98043bab3e5da9bf170e
Date: Tue, 23 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661258452
