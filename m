Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871D623BE
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 05:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651383538;
	h=To:Subject:From:Message-Id:Date;
	bh=OudoyOAn6phwSN04LIE1HR7xRDBjMooGT8vob5yiE4g=;
	b=IAyrbat0hnfZ8V9ZitemevrCYlBLijCyAw20lzkgoYP1CkmsK0qNh3WMczYEgdFU
	u9XjmmCwlDIXwjpBweiYvhvEGMk2qZWQNJ9mPSRx8ZihVOhhncYiTA50BhZx2PHUcgY
	NMs6tTO3DYpdIXKcJ66kyGP84PgG8J14MTkhHmNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651383538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OudoyOAn6phwSN04LIE1HR7xRDBjMooGT8vob5yiE4g=;
	b=EMxPY1OZQcTrjrWTiOdYGoLlkmGVx3hvHUBdzYQ/DICN1nFy5a5XOhvV4sCsVV15
	6/g5YBvmSjJCVd5EOo9FtIdcqp9XDYpAsrN8zdn77x1x3RDVohmmrYJcd3pmyF4Dyvd
	28/aYMR8u/uNV/efBGwTAhRSreHLAcs6t1TGylPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807e211252-75072fd7-8d6c-4e7c-a9ac-fcc790063390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 808bc697ce159a0bbb4a71fd541f93087132b32b928c051633e92dbed96add18
Date: Sun, 1 May 2022 05:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651383537
