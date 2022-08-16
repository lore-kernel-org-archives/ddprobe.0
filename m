Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F5D6AA9
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660687252;
	h=To:Subject:From:Message-Id:Date;
	bh=wfPY2dHz/OyXHMERPRQgkHXQCwl+sUeKnkwj6bJvZOk=;
	b=PTT2yX7LwLRrckiArmZI4cwSomx83j2CRPt+5grvW1q1Orqoz3r3h5qtX8KB3q/c
	vgIIDH/gTTbThoqoI1WvS+phd91/+uZnMBVTVXw4YyEGClO86fMQ3mNyyL07oIXpthS
	gyaZdz8tX3NRPPBef5rmcbdMFJNDh4XwgBFCbu2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660687252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wfPY2dHz/OyXHMERPRQgkHXQCwl+sUeKnkwj6bJvZOk=;
	b=V7H4v1ptOezc8BonBBBwKHHQaKhhDtV72cVQYC11Uik07qQg32gg1kXQ0kLrEDbC
	LdY7SYGdgjcpVVkp7kh1qF+zWh+EGUNYpKGb4FjmZvKeslOZOqQlb90kTvvI+0MCYGi
	Iai6j1QZbbhQNVzQE7oWklBgVAEMlGqeWFxYlQQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8ac7c60-a291e3d0-0012-4d2f-9a7e-6bf37ea35966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb42d00936ae893572297c8d4bc15199328f0edfd4523469e5934f1cd33b15a5
Date: Tue, 16 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660687252
