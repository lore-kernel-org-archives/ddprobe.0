Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1207B7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 06:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655275979;
	h=To:Subject:From:Message-Id:Date;
	bh=aY9LqfQkp9r3nztCZQ6a4GE+DYm5QJ5xKTbYH+TVVOQ=;
	b=VWPjDdL9Jr/mi5IH8fAg9EH2AGCgjBBBXJAFxPggxWc/Xfem6vy/Ved2CBpeyq/B
	y3M3MUaWXcd6FRF8vm+y3DUjUmFIlOcDB4OS588yp6ZgZtIgMZIXL5uGIO14ruig0mT
	Xli/aEAoeiAorRcJSU1wtospYY+1MU9i8WvyWhNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655275979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aY9LqfQkp9r3nztCZQ6a4GE+DYm5QJ5xKTbYH+TVVOQ=;
	b=UwZFXymualmi3WeIbdR2rs5SrWRBIf/eXQ1RT8UJevllUN62YApjyVQTtxWVDJqg
	bRTijSirlwcfRoYUto29fYL7IO0NFLGYd2t1smE7mnOTiHq9a7JXuD4cUMRDSQXhxlw
	bW5Zu2XrbK4OUoK6xfNbt3CHs8picDgEZvJ9+aAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166230204-97ae69c0-51bf-473b-9e28-10d59e67b026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9b34bbc1e7ef64ad4d7e601b5f0477e9a36d3e0d9bac8b8792b84d69b69c9fe
Date: Wed, 15 Jun 2022 06:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655275979
