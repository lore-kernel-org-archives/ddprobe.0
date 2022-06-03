Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D497E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 22:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654295219;
	h=To:Subject:From:Message-Id:Date;
	bh=bGkRh922ez78KaS/4CAHUCUUHEA/WDkA2NYYl8L+sbA=;
	b=KaycOaeOAer3HQ9T55LAqvv9aRWa50Ov4EGOzkWuHMCg1BT9T0FvGmQH+Sdotd9J
	bdLIIYQZl3K9CI1valDRLQWbfCq9FZ5WTUCrquYbOMW/ATj85SPEy7yZRn2y88bfdRE
	n5GetFRVS13q/UuEgRnLCvVrn4yOZJgB6uBzOqnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654295219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bGkRh922ez78KaS/4CAHUCUUHEA/WDkA2NYYl8L+sbA=;
	b=R+8EtTW9D0dMVKXBD8k1SK/4KpiZ64YFW1MqVsUmKDvM4x8d2CaQF1NRDvH1Lltx
	3cvIC7TQZpP3OxUy1q9TovyfhNg8NnbOVKRlj7KYNoeEd5szwJiukjwp6kq/Oze3KWq
	8tTbmscymWwlSIg3/KrA8HRFzNlwT+t99vKqQL/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812badcc93-114d403a-9d92-49de-bf40-6fca432ed729-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb9f9fbff9deb98c42883ebf12e15749b8179e0daa74bfa13c644280e4164e39
Date: Fri, 3 Jun 2022 22:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654295219
