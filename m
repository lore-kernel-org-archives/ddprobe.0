Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8AC256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661185252;
	h=To:Subject:From:Message-Id:Date;
	bh=p5rLYoFL2IJT8XSOAKDbkLBVK7DZLEbYDGjvj99qvRo=;
	b=B7Ecp8pMkslzeWV+PrtP3lXymVwMQl7JmsFlUaRQb9RMQ3PBtCW6flatqMxoyHk9
	+IFJw2LmKXvV/H9Wce710aefCTpufVaurbuKuu2ZsF/w5LxGqsRBE8W2kQGsDdfmnEW
	4sbknANg0LghfeereD8apK92KBnbK6AnfNZDbHqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661185252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p5rLYoFL2IJT8XSOAKDbkLBVK7DZLEbYDGjvj99qvRo=;
	b=TvoX4BpRJVemr1OPw2VZTid0HnCPhYpYV8N8dXu5XrSAmAh4eddDu5ThORe2Rpwe
	M7bzV4/RvT0xbauSDmnQ0g8GR882UUXH4NKAWG3zP67hEC4tdK/UDICqUN5Ghx+R4Tj
	+HJCb5RQj+XZt72DfYurykc1Hg55PLv4blCkjLac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c65b5cdd-768eba52-e0ce-4937-9d96-9b5b56fa29f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd2598b5f7d5da19b4a5b399ffc55715717cd60967d1d4a6c256dddeaa73434a
Date: Mon, 22 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661185252
