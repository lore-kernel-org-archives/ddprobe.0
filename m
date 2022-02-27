Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865DC7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645963584;
	h=To:Subject:From:Message-Id:Date;
	bh=MiltEF7FPh9kyY6RcgaeG/xkUhU/A+s0NhQ/AzOpsTw=;
	b=en+vaVSlMK0m1EXC7/67taSkKFW9MmvOnnZEfdeYq6xeQT3SZccZNKrHbvSNCs++
	udqBWwQOvTO1Amy3rnO83y8VEWgcV9nQhmsFyeQbUHuOvUcHdfs34ZZgpmhKomH1Ehy
	pjpHeculPsMMt0KvH3nrySIf1C7Wkvy7KSP6p1Mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645963584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MiltEF7FPh9kyY6RcgaeG/xkUhU/A+s0NhQ/AzOpsTw=;
	b=LRyzs9mFtynAQss8pJ+RG3dq95i8XBgzVAzBwKpVAPSQ4DNiR2UhyfbiQ9eMYZyC
	D7T/pEUieRwx+n9dUaPHZAaeekuuPDmjR3+/lfJfyhGAT0uzmEFWIafrCJlZKgvihlf
	On/NgiomgvWWD2GwRlRHnNJ2AqWBDZlV+67FDYqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b1324fc-8f1cdb8e-fdd2-4fb1-8131-d181fa28fc23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac30e5fe19413ae38f1d2888e24a74cdfd6a108451a02e89c81dc7a52886febf
Date: Sun, 27 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645963584
