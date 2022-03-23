Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DD6614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648057584;
	h=To:Subject:From:Message-Id:Date;
	bh=ijg8ycSYwQtcN1IXNOwzHqQU6bBM+KlonERkkJ1PUu4=;
	b=lTV03NRvSLmo0MFeAzPngdt5/DGkQV6JqB+/odvzJXgYBBJ2c8IOK56iGTD3GWXh
	lfu+tBsJLI7Qtwokqaq6jd+J9xIGBzjynn4Z78xHx039dW1Rd7j/V4x8mS6PjBQDB7S
	Qguetis28zjFU4LIx2I5T/lin1qUpmVouBJrwedM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648057584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ijg8ycSYwQtcN1IXNOwzHqQU6bBM+KlonERkkJ1PUu4=;
	b=QpadgvKW5dAw5W/aQ2lNuZSgagqFxEN1DEX9B/1vBJ8OqBeLA3IpH0S3vmhLRfj3
	BgUQhY2cooB67BJ19dPu7rzKvgI9CYcufm6HnYM38qNjsw26KAAnMo+Q6A1ogtlUncs
	2J+297E7LLA1OMcAFZE5glSMg1NbhSKlURXaCSyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7e30c7b-cd86b9c2-e1fe-437a-bfb8-ef91c6af0a2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ea2fb98cbfcd119c5e991b89859fe844849dbfcff486da1abaff84fdf73cdbf
Date: Wed, 23 Mar 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648057584
