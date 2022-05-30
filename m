Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2799517F8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 08:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653900479;
	h=To:Subject:From:Message-Id:Date;
	bh=BCw6zCyopcVq85vaavGtAUi0RTJSlZH6UfDh78ACwRQ=;
	b=QfS2jNB0dr8Xl0TUd6kxC1AySVfSLcjc7hLD5/Z08tYr0/isyGKbYy0zt8G+t0Y9
	Pw//oIJF2arlwAkyEriVOLacjoT7uKgBpEUuNPu72cDr4N7KF97LfJXGNURoEgeJUKc
	PgN6ljBRnBoFFGgBJ8AdbDdBn95zdx4xPj3FG4PE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653900479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BCw6zCyopcVq85vaavGtAUi0RTJSlZH6UfDh78ACwRQ=;
	b=Osb79p2y2Oc2fEG4IEFMCuNEZrRP1gWTx2eSTKlHhcHBqDyXtQUddC4ApstNBa7O
	ZDlY5pbb/jInHdFeWqWc0mKu4i+dpTQdBcw7BFLB+VUSytsBeONno+kpDRiypdeQs+s
	DdBmv8vH7Hs2MZW5Sr3NYqsch00WW6qvufKC8Rfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114268b06-2551f4ac-9089-4f3f-a9cc-40018aa41dd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea69599ca8d23bc0e5d9ff9397ee25644e71f0534d2f6b241a15b74cebfe3f08
Date: Mon, 30 May 2022 08:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653900479
