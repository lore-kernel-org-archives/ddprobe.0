Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FC0807
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 12:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651839118;
	h=To:Subject:From:Message-Id:Date;
	bh=r1BBI6EZdNak65Pf4ZgtvsMhu3KBhRW/XMwpIueTdHY=;
	b=P4yqBmVy9yzNobbZ4fsLxlFGYfYwt6CxxyeyFyWCYIid+AB46SgFTD5xOT2qIR4/
	cxAAxYs0fJ0T8Al4wcSr/XHH/kyTtAie4QsWLsIHv+vGPes7BwKnPPLWg4GFHaPwF2w
	vfrDXC84qsU3ZB52SQNBkhMpOfdRTdaht9YN6MVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651839118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r1BBI6EZdNak65Pf4ZgtvsMhu3KBhRW/XMwpIueTdHY=;
	b=iGDwtURY2fLVl1ZlpSAyJiC/xqGcTFJ93qrIb7iqyqZT7cuT2FvY7HNjJdpvm1pe
	Gm6XQ9UHzel0mVsSZgtXUo6DieD68HtzOEprzgE2CisBe1RcdGsUBnLfK8EjYec4M6s
	+/sxuVfxyKhivwk0vMMtts2m94wD2h8IOlBVGndo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809948abba-79e50dee-f023-4f8d-8549-f279bbecb2a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: facf72a9ff3d8ef0675782ef2e913392528911984cc9b2ac8a749035e81371c9
Date: Fri, 6 May 2022 12:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651839118
