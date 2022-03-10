Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2177A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646874085;
	h=To:Subject:From:Message-Id:Date;
	bh=NkU/TxtriYdZExxo4+WqHqw7cftSuf8Kf0JXASUclmQ=;
	b=V6NW158xuOq2W5KcUyHYEzk85WsNVvoi4MDmv7xlJqu8K0Ib+rkOdVyxg+9bXN+a
	BJPvXUu1iMpiZzfv1cSBbwfavV5i8HLA8iR/zNEBeCsoKu+6v+0uAcWbLZuUfYBjFDG
	ZRQUciMytXpjds/lvsVGay3MYPJklIvYylOMVagQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646874085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NkU/TxtriYdZExxo4+WqHqw7cftSuf8Kf0JXASUclmQ=;
	b=TmqWYl7HjvTuBxeII5FnDMuqHzrUh+0tKe77EMXIgZwOAY7L8ymsyDYXn0bBzBcH
	Hlt/PK4vTtW4y954/eydCAfziwKrew30p/H16NeR5oZzRJG7nOQuihjOJprsmSJG/Fi
	6oPNSEIws3Nh1209xXyIU00S4Sdtim354xbzZM7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f715845b8-8a6e930f-d08d-4c08-b5e7-e671c9a1faf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 269b33278b6b3275d3643fecd6c036eb1b38b7594f224b4eb2be6e2f68b5ae0b
Date: Thu, 10 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646874084
