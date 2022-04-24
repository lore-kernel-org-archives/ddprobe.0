Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EABD17D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 13:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650806578;
	h=To:Subject:From:Message-Id:Date;
	bh=ytgv4hENphAonvIdosJjUbHGhcsDfkrM2NfalA9WfFk=;
	b=HBEKyfbA3hOqEiCibfPOnJ9bxJQW8Nn0paZt+hLzPH2MFVWGEKb5SFusooH7a/0F
	VG0hVKeWdspFvLHIIXc3tkQCbB36nkzjCSmjb5v74UMajLbTeRjCuHiVO/wG6KfhXOL
	NKiaaRrsYqK4ecMiE3w3f0ga6vOIyb3gfrUMi/iA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650806578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytgv4hENphAonvIdosJjUbHGhcsDfkrM2NfalA9WfFk=;
	b=cg5rBz2FsaX28pvi5TCQdsE5alGbuxNLwzAkcfflaHzk56RonQyu/ERgJeUINVG+
	HD1rNghW6vNM8ayAMi14nv6+HVYriIhY2oPFUbvHBSbhgUHVVqfUkBZRdc202TCulsX
	q5XBTqvLRiqCg1tmKdWECJQUdItBmq5RkY99nIiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805bbd5cb6-5b382970-c3d8-46fe-91aa-7fafdfb9bc3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1addb440503b1e5be02d88f88ac257cb7008df510193eff2b4466c14796e9bba
Date: Sun, 24 Apr 2022 13:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650806578
