Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04396A3F
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 12:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651150558;
	h=To:Subject:From:Message-Id:Date;
	bh=3RMoMEAICPaXso4+agjT9NcEZFsXRwdh2dIc4+C15gs=;
	b=SRo0VKKms6xZ9JjGj0sUzZBy7hHEBPgGjWEnS8AnuWIWKIR0aKubNuPVJA6vo5tV
	84o4xiK1KB2k0vj7x0Jqdgs1FuprS7wD2bhUyR0fqJlRW+TVbnOHQ7sFdb5cyg0HP/r
	qV/5RPT00tua7kxfZpCUOb5gxA9HSzwb6BXzvfDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651150558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3RMoMEAICPaXso4+agjT9NcEZFsXRwdh2dIc4+C15gs=;
	b=dr+pcnNwonqiIg09N+sVR8F1dSAab5M50GHkbE6q8ZuKZAsDvxyvCKqmFW9pU9jp
	XKIE/71yWgStrEvBqBP8j6/yOrkWgkFSp3kWt57l8PkN9XfKb1eCDBjuzElO1egQ87L
	ZagK8p1gctyUrv0Ic7whDtmJKmCpMoiqwblt3rgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180703e1447-fc37e4b2-00fc-4b4e-a4b0-208de1e65751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cb3b79533fd98e6ec0f943b33dc4f2ea8944be98e0032caff89cfc9e3416a7c
Date: Thu, 28 Apr 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651150558
