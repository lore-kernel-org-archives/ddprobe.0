Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7957F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 11:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654602659;
	h=To:Subject:From:Message-Id:Date;
	bh=IuGQlM+zOIJkRxTJepuja7iE+VsxWlKIfcwi/Cf7yVI=;
	b=Xqzco5gO24Aqzje+fV9Rrht/w33z8ubEV67fYScGjG5cn8htXE2SdV3cKvZ9bEkN
	GjnD0G5kQLjCY6BF63Lu6vOGrrP6Gp9YoS6CQG4mJmWpk7oJH9yhQR6wqRXBvkap9gi
	yvZFwrnWe5cwM8kIBTAoWsTteHO8eI9FgcqZLB4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654602659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IuGQlM+zOIJkRxTJepuja7iE+VsxWlKIfcwi/Cf7yVI=;
	b=DKma1U7oFUeUm2JdJti0D5KvXOmaUsugOA3iSZj5B83eI0YmrNhCRG1B1t41k69c
	MJsbobxzHxRIm/c795vGjZydwNvTAvbbdKOYakUItfGtRPvprHopUwRpvjhz66SXo0S
	mNgSuIEaKVu0JMZvgGHAJi50X/Xo8jIf8GzRkyd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e00f58a-ebc0a76b-b9dd-49b7-ad61-847d48759c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 762ee112f202bdbfbeedd9654c36855c0b0c5400626f39f4886822c342250c7c
Date: Tue, 7 Jun 2022 11:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654602659
