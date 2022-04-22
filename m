Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AB423B4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 03:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650598378;
	h=To:Subject:From:Message-Id:Date;
	bh=aYlQjM6fHFMpMCzylIDPYvSXVEcXQj72ji4T5Yem80Y=;
	b=ESxOfDUTKczfbA7LJrmHqku9PpZwEbWI3rYMkABYO3eCQe89jFd9oBP3UWBmaKk2
	dUMzkuYJy+xGSM6clak9ZDDlVlS4o2GODzxXZkuip9wDn9f1ZytpZ++l0KUZKn4b+SN
	X8f+HGTKu82ld4zJCZpF+pteV8mUeBp75t2qc6A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650598378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aYlQjM6fHFMpMCzylIDPYvSXVEcXQj72ji4T5Yem80Y=;
	b=LvDVbawUqDm4uVry8NEGMQz4WvzFrAESE2QXKoP/XisWAK+TmYflz3TgT1JZ7N6e
	F4TZcnLqaLzz0cet+LQ6LKNlBxzpu8mG9nBSBFldAD86I3YQFTPXN1M5qba8iaZZ/rW
	SuoSBXC3tbHhtrQqNDY97SEsujX5q4smtBhZx3BU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f547b5d-96f63942-57bb-4586-afce-ab656dfa24c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2eea8c6eb8599f4d4ca29cfd067f7087802224bf95bdc177b3234cfb6fb54b36
Date: Fri, 22 Apr 2022 03:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650598378
