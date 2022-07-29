Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BF74C67
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659111053;
	h=To:Subject:From:Message-Id:Date;
	bh=zSXo2af6RAGJ/fFtT95EQDc8Vr/fOdCc+vwO9YyWvPg=;
	b=e452K59RJ0hhrRqGswNgrD2A1flQh5UgMSVjl+M89x3qMTkJ3r4JjnEtd/C1JHL1
	lavMvvM8cSn91emJV5bvQUoOvUn/0W0JXQ+EPpcu8Pq8U63mjfGLF23xCzxoO5R1oPQ
	hge3vk9X+6Y1q3TWngKTb00xrceRylRR0wH3JheI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659111053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSXo2af6RAGJ/fFtT95EQDc8Vr/fOdCc+vwO9YyWvPg=;
	b=AOn4uFJtFPvhaKUO5cHxVoG0yDd0ekbUHrBqQ3WoIYrDvj11/x87dRwZLW39cscH
	5WAhpDTkqaP385RNsgYk9Riju66081caqbO7WAwvt6d9/42j+2E6VL/wn0b/HbO7NYh
	I2ap5lAaAAe7G4AQNXM44i9mNERd6W6yGtJUhd8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ab99536-368045a1-f475-46a7-92b0-d56560e363be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38af99f5609448226cb775703a6949ee533d7b56f64a6030551619247016ba6f
Date: Fri, 29 Jul 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659111052
