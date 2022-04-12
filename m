Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F0C7B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 04:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649737078;
	h=To:Subject:From:Message-Id:Date;
	bh=MWlG8gH+xNfT6hYrH1kjHD2MIM4XKaOnMDsoDT4Upp8=;
	b=UJ6LfM3Z5hOc3KlrtFH3k+8SZwyUNgx0QnLHaTKGTQBj+Y4Qz0byXApfdnNqHXfO
	AEzIX2/jGLG7c2IIRv1xRju7XBYxGEFrKEYEEIedwWlM9rky3bZP3PwQkXVWSnI1zX/
	BqzSOAwQ/GQwfqwUZTGRzxilg1a8Xr9+hIWRWKSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649737078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MWlG8gH+xNfT6hYrH1kjHD2MIM4XKaOnMDsoDT4Upp8=;
	b=X7qFjs3qEhnE91A6IMv97YqL/RDebag3UglFl5c/HlLoW4nsP+MI9OYlhPzGARXu
	YtA2chD9CkpZRTNxsnAMWKvIZDfnuoPjl57bW0E5JbgcYlh7SIGJ7xDQpIL8FPvPYoN
	hkMdVSTkDjR3nEjiTVNhOWLrg7rigzUtDLbrW36I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801bfe1640-e1b8c63f-31f3-49cb-b6ca-23677857a041-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4223a417e9471d976713605ec2eb55f96f6fa1ffee86e3ad0482e6ca0963b440
Date: Tue, 12 Apr 2022 04:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649737078
