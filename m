Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4688817E7
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 22:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648506778;
	h=To:Subject:From:Message-Id:Date;
	bh=2dt6uuEwE8cUZV+eyAaXBnVEWbw3ooTWLRTRcyPy22E=;
	b=HUSHzfliwXFdh3c8IKghOdBwTu+Go13OsBOi2bIFKWcYQzz1hqALyJmT/dt8BUdH
	X15MIiGN4JzVqQQvOUWa9yfe4Prq9hyNUr3AJu0MDwda+n7yWFtCq8KgZjtPMqq76Bc
	Kjp4dOGbsOJ0Y6qvkTJHrcLvWMzKKnd4/xN6mVRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648506778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2dt6uuEwE8cUZV+eyAaXBnVEWbw3ooTWLRTRcyPy22E=;
	b=Gjp2Fy6IVwGnUr1Rg+TOchY+7as5vTilSlDXY5zqH1WghObLXLRtdgZH3JVtc3UQ
	PnkdImAsNqmZ/yuva0+3Tx+h7e3uSZGBHNjR7KriwINSNb1zU1rbn6NAhgRj+EPfrMP
	Qat+d6zwhtNmDfA+kSK8pULhstZI+mCdzH7CMreA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd2a932a1-3fd5580b-c306-479a-8b38-c6ea154c002f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11925287a27178a6ba34896346e14406abe5f953e98b7dd40335bcb7d0e1bca6
Date: Mon, 28 Mar 2022 22:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648506778
