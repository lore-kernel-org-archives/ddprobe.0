Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCB67A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 07:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652944499;
	h=To:Subject:From:Message-Id:Date;
	bh=wZGU5wG9+gz4+0JO62A6SsI0157wlb9TkUlsFMt5g/k=;
	b=bnMSHmYsLjVnM5OspWMSN9fw+ltZX3j13N8uQqR5r/ldK/UbI7h6aOFzsnHM2scR
	kfl1zNuAyyRb4vJLLdb0tQSESzVz7HD82+3YrdLF+T/Kb5LyUTiQW/urvQfRW3d/xkT
	BOFQM0kcjzOETPnJB6XBt9tsXcIYeTQX/3ekZ7vY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652944499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZGU5wG9+gz4+0JO62A6SsI0157wlb9TkUlsFMt5g/k=;
	b=LxhSlqXTrEpQTc+8auAnedBj6ehzNQ1VOye5LH+Or2wmNWxk7m9VXLs7TI7EZ/PL
	ycsdZIeln485Lf7Z+3BhPM5qo+hQELPwQ00iJ317bNP+2FJvvNc4qg1OquvntyE3vMd
	Uzsd8dO+2ZRqGZhjUTFrYWLDu+1xyeOqP0BiKrYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db2b7259-694f8699-a8f8-4ba1-9fa4-78bca33c2b6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e90308b1219ff80db4103a8bbc9dbb3d50bcf774d6f03ff91ff58e0b1997597c
Date: Thu, 19 May 2022 07:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652944499
