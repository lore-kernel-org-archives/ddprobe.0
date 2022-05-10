Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C5823B7
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652159879;
	h=To:Subject:From:Message-Id:Date;
	bh=crwEdWfInvuE1IPmAWoBDvmdwVuXgqTfoa0rhY3vnFg=;
	b=jsJ5B2NBBesH2+ajvGyCaWk1JEjyTicTQ3UBV4DWZgq2QOWXCC0iBYZK/wFmvzfJ
	B9XHl8ppUCCCzVDWB3KidTWFo8VkEMN+4h9y3yB8KiOBsnDNzPn2E9hXix6SDPdUEi7
	BwmjpTqtkf6ZQhgzpHQiUe3LeAq51kBQX6pSpmtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652159879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=crwEdWfInvuE1IPmAWoBDvmdwVuXgqTfoa0rhY3vnFg=;
	b=QLHUh35mpgWoPej+5JBL7zeL22zfxWaDvwxk8/GoTwNa0Gtn/cORYQ2UnIbEH9OH
	CyKxCzL2q385b075dJfLqTTB2tqf/wGOLcFM1lOej/dcF7FoOtocSyQKqBNmlWwxvTd
	SbVmhE8N4/OmK0pADowUBCH+807a5Tebxf2QkSRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac67186f-f6884d4d-171c-4d7c-a736-08274106201f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70b3b1e6b649b47474ace5ac3d93cdbcf79909032d777303c810be4d3e174728
Date: Tue, 10 May 2022 05:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652159879
