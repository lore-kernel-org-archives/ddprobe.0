Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D09A7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 05:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653371579;
	h=To:Subject:From:Message-Id:Date;
	bh=QVfNSipwvqEBZF4lLKOAMPY8bjhDmqpO2J2RWOVUKnY=;
	b=Ze5tR45RYE/+D0Xj2RuoOnQ8gMVeT/kPLqJFs4vZjibNeru34DUkElTkbuliQ/D+
	UIc4rIzqbFvqVNu81iFqS120tLcnCGAVpKZw6pxSvwevyaKD7wobPwzxHWUNks0zHs5
	h4I13Bm8XFKJ3BbcQCGZp9x4lL2fKdbhSxUo2+Ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653371579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QVfNSipwvqEBZF4lLKOAMPY8bjhDmqpO2J2RWOVUKnY=;
	b=GVjWsaeeJtUB3PSrghqmH+4OWHD5OJUYZAIdpn1Wnp4ZhilDkz7xP7zf5QvZc7zb
	wIewREKJMsOD20tjyS8VESdLh0HP7KV0qq5AVdPgS+cJAKHqwDJ7vsdS72kdDBa0/A4
	ecYL/3ndzlVohAmV2Zk467IlFYXCL6VKNdFINz1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4a02b9d-27c377cc-90f6-4251-9d48-f0bb5ba0e94b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 252976240e36d33c9cde4c5e2fefe8038ff12368f18a278b6a87dccb3252b61d
Date: Tue, 24 May 2022 05:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653371579
