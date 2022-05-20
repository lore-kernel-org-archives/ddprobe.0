Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D217E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 22:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653087179;
	h=To:Subject:From:Message-Id:Date;
	bh=RHvdbk4/0yM02xuAM5hbR+jEWy0KkjJIyCnE1yZ3s6g=;
	b=G86Fh8Nc31m38GCaBSqVCDHJ0TNALJsDxxjCoBIhVNK1HAyB1JMcBguSe9MKdmC5
	FTyggZeFce04iJutMk7bsn7xEiptNS0ad3jn9YaEW+PL/uPvjPQvoe7iabHmlf61kIr
	B/hQg4y6q27By5y6t/mSniN91eWB41l4SpEA3ZUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653087179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RHvdbk4/0yM02xuAM5hbR+jEWy0KkjJIyCnE1yZ3s6g=;
	b=Lm1tLjvGHCkzJnmYoxGnqNQJ74P1R3es71pIp1/QxL11TsCLXtJ8wR9WFKAGhac/
	5Cy22h+jnGd+fPCyXBYFZJiCcKYXcqDZq5CcGZxHWdqwkJQXyCYiRhnVZV4lxr8QXx5
	QVP1SX/iTjvMqFH26D+6tN2ff2a3GsEimEWdUQ0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3ac9211-35aaf228-4272-4630-a9de-6c78f63edd53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbeab389639bc898b51950b23b8fa307707c5e35b8ab239bd4ad3cc7fcdb14b5
Date: Fri, 20 May 2022 22:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653087179
