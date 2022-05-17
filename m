Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48461136C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 10:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652784179;
	h=To:Subject:From:Message-Id:Date;
	bh=mIHMZWodqsZv9QoBcJGylg7JyUf+k9VhPXXm9cjG4Mo=;
	b=anjkb4P5FkB5WPAnY1+lgvGruigNDTyIJSnBG5Z53/mAqDkGcYfms+VHfkjS25Qg
	H0aRPqJOL1p/bwHFQYuw1ossvkZPvvmKyE6+gkQkA+TlvuJdmom5Qt7JhnO5s9WZY6K
	zl6ZNG//TeHfXqDJNyvFNadHOuELqN3eW1OPquoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652784179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIHMZWodqsZv9QoBcJGylg7JyUf+k9VhPXXm9cjG4Mo=;
	b=HiOfZ+UPo7dhkHHv3tcGdWZ/aZB/lYDrQYXesV+F67lAOcFIYAXbkqgCA8FTJI5Y
	Oq224ot8ubybD6eKC6kaybLNmcy3r4+ftz2iU+YCkdRxyq7OI8/XRW9KqChCdeCME6s
	LXSmr/AuudqXVuUJkr0loVgWuUabEOlIqC/iJ9wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d19d2830-31984cbd-e85b-4d4b-8e62-0189ffd79186-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ba1e8b51437a3a0dc65e3449f822c003ee340e909325193a802ef94c598471c
Date: Tue, 17 May 2022 10:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652784179
