Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D10229AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647772884;
	h=To:Subject:From:Message-Id:Date;
	bh=cGBpDRrBhqMxWS9Kj0F0Q5p0rn9CRl4B7EUhPl4VJd0=;
	b=IcKl7p+aGzNhYsktNTGtlfB+6g64dkRkk2HfI58VcJ4TAY/vY8Wy3Du4D9PYfsLW
	6lUONmXvWY29/fRnEVjU5aRPgSedFG1csb7tt825+ShARsA1AGihXg48exM8yAh4gE2
	OwCyD5Iq4uxyza0xuF8ZFrg1FS3ZH19vfrUVrev8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647772884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cGBpDRrBhqMxWS9Kj0F0Q5p0rn9CRl4B7EUhPl4VJd0=;
	b=SpeIQONXHS5qAWvLyVd18+8sWHc26z3Rop2ZfIREFG4fYxvMbWxqrAonwexx/PKS
	V/xXDrNQ7evUEO0t81hlKgA0omForAy4xta14diVA7OdF/5uIr9/yUUdHEo+MIO2ix5
	65vKpdrmF24bcHYJVL8E770Dv4olHz0qU2vGG4yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6eadf22-5ab5d81c-55bc-4586-90fc-cef718b8a14b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bac273a94031e83abd9cb4f3ad1d94f0f18dded2e97efd51b2450991cfb8ac2
Date: Sun, 20 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647772884
