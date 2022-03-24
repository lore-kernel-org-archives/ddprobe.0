Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5D67A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 02:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648088518;
	h=To:Subject:From:Message-Id:Date;
	bh=iB9StLMstR9dxFd0kmBhKNCIdMWE0sZzM3iZ+X75jiU=;
	b=m4FJaMfeK6fIeAVxld81n4KnhUh2g13hT0m1/QJb5YjUy4PsgpEsEgZqFSy229/V
	A1G6WT5lw4DVQ44uUITJ0kJZuFJ0XWMZqpjZhWHK4S1nw0K570cCEyT4zRfe/5/P8I3
	mdhXVXQ2foj6EEw1+tmoVDp5eEZb8Rd72THbnbMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648088518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iB9StLMstR9dxFd0kmBhKNCIdMWE0sZzM3iZ+X75jiU=;
	b=XmSHqxmXiiq9RRrfc7/r5kqn99cwaYujs1POtc4raBHbqpov56cKwezq0KO1h83v
	CZoz8SfQDJgxC7m4HrJXf43LfYlBkRp4enVcTiC5Qzxfgttkhry3SfX0OKi+qzGZ/Wv
	vuhglKq1+geiR0C+08zvVFlfuu70fNm1FSXjQ+dY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9bb0e81-da7bcb8a-135a-4613-aa14-c9cb849627d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57f3129e5f55f45969b213d3df362520208835a4595ac7215cbc9f98f50cdb2
Date: Thu, 24 Mar 2022 02:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648088518
