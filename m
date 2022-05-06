Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E67807
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 11:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651837198;
	h=To:Subject:From:Message-Id:Date;
	bh=+tcObu9x+ciXzddruunWjkjQdnJyqYxVl35gsZwdceY=;
	b=bnrfsA+3XZDExsWFhyE91FERCFgkpbmpUgisH5MbNZnUg6qSF3hfNBbKE/05zFbY
	5SUJbStwXZMGzZ/VEs2PKcNR2+ynAHe2sk9bmyl9jEzrKWOkz4eK6P78XDfhObsZAsU
	zcgT2m4sdQGu0vql8/MBrcrLHqxIKEWrjb4cdn04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651837198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tcObu9x+ciXzddruunWjkjQdnJyqYxVl35gsZwdceY=;
	b=Sphhd2Vdf99vaPmmxCYxlDUarb+S5HkOkxCEq+BlnNXD3xmX7fKjIV93DB3gR6NL
	iHmmryQTltwl0zriiO+qiY7sseZh4t2i97lHBGKtn4Th7L0BbFD5f0lH5WIVh2S1x+V
	4CiIDtGywDwXJ0oaEnhG9E6tgNXyWvB1tfSD05ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180992b5fa6-6460d45f-0e55-41e7-88b4-e5b032d9bd5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d37e320fadb3b368870272254c61b69bc22d3bdfc5f8fe3baf969484d4f4a555
Date: Fri, 6 May 2022 11:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651837198
