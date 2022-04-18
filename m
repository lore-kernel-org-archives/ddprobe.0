Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5617A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 14:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650293518;
	h=To:Subject:From:Message-Id:Date;
	bh=7iT396SgkaSdoXkUnac+PQcqoK4djYHUnqQsBHVbc4k=;
	b=DsoDPUAJeKD2PesidUATxC/h2SNVc/LtPjn1z7FItrQxjqOyZI2U2uBIeFF7Ub3f
	8hSpH0I9JTClWj6I9j6Sqo0tO9DfctI76w1sPvZawBuiqWwyYLk6XW6AUlYV0ctL9ho
	YBxdtYTHB9LX0oCNX7GR9I3ncA1rtpy9dXsq9/nU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650293518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7iT396SgkaSdoXkUnac+PQcqoK4djYHUnqQsBHVbc4k=;
	b=JpD0OAGOzPcufWVvMZu6akjnkDQYMnI0r2iE6HdMP5szuqH2BJ/9/YtNVvOJZPsz
	bzyaxuQeMcUc4c7ClZzKTRbn2lc/tAeypqujbbeCPFjaMzXYMiXcAskGHdQOe5+card
	AbXHFzgn7h2aLoP7gSdeXAGL9exBTmBQFCvvhnrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d28afb7-1104e666-d5dc-43e7-838e-8e0725933939-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba722ba07119c681fa6505d45e789855992f5321488294d766ed9db265397c28
Date: Mon, 18 Apr 2022 14:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650293518
