Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219B27A
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 14:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649169538;
	h=To:Subject:From:Message-Id:Date;
	bh=4mzFTINXyThk30FHl5lOI4++73JQSu+pAFlYbIhTwlU=;
	b=g7/31rWk2yyUEWSFkyzc/O0MLUeS8AP3qnyxXdjyTJE6FezjjM3bPKCZOMvqaBMO
	rqWfYOUjxjAjaUnVDmKSZKHqmQo/vRf50dAVkA7EmbfrQ2/4iaCKnJoeqLThJQvaYnI
	BhFwvJ/MYNTP+x9ejdjVe0sjpyH3GHs0gnB6jeyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649169538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4mzFTINXyThk30FHl5lOI4++73JQSu+pAFlYbIhTwlU=;
	b=PdSHNzadaykVu0zPBe5vndiPmH3eYcF1aHVvhZDKPS7I9Er8cVRhjyRZi4KZfpig
	766spiaU7fE/XIYuQZorfwxi9oqUWv2tuEbuTt91rYBGKd0PxzDqIwz0J01NOfBlvvR
	lxkeVweLLUEF6qCHLtsy9MNBLG7u96n8uJN10kNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffa2a1d0c-a5c8dd4d-707e-40c2-bc70-2071b662605a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc293420888c8d8797cff45caf89ff3ae86a5d65725c9506c4973a79561d80cb
Date: Tue, 5 Apr 2022 14:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649169538
