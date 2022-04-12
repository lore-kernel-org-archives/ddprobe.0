Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85B81FC6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 16:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649779918;
	h=To:Subject:From:Message-Id:Date;
	bh=fLqrqIgQLtUpwf/NhiYxhvmoFKim7KjDhTZDy13ndCs=;
	b=J58yGLPZYd8+5eJcQhTDC6OfHVv6T9wLHUMEt4vDZab5n3G4ld9DWoNdBgODF/7u
	QP+ASbuYj4WntEGc71wocbe4RIrITtKrCuBmRkCBjHUQeJo1aKMn2gq+q72c/fvcakx
	+9EawGkwGJm3SHOqcg7Ce/kGD3W4xFCqOuBESUM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649779918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fLqrqIgQLtUpwf/NhiYxhvmoFKim7KjDhTZDy13ndCs=;
	b=ZFeWmFPWh+hZoRb4FJc7YnAy6dwQqjEBMEiqBZ/iS62ltgoDjZE9O/HUj26r2Gbd
	2o8hJWuuPsKLPda4QQBq0nwNlIoWJmRR0jppSWO4utLALwFV0crySRyNreDA7QHqIgq
	tM4dllAoqcZMXj9xwlvrO4pUtdT3XfH8dkB+K5Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e8bc5c6-9762e1b2-57b1-4fc6-8dd8-49667a40c763-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a523459f7ff51ecff16244c6ebd9d2a0889058a75c1552680f786c5ffa81a6dc
Date: Tue, 12 Apr 2022 16:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649779918
