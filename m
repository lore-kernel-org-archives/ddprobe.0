Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492F7610C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660952452;
	h=To:Subject:From:Message-Id:Date;
	bh=AuiBUQfJ0EgxPzRbzD8uXa824ANQYJds7TfcF/awYb0=;
	b=h/po+/NDESzW2BqV7fiQgAq0UZQw4uMNuhY3FPVn+wX+rbO5LryVX27ugWBIxwqt
	W+igjrO1wNW+LOKjzsawvDWBWWUQQ4twXccZygxEaWYB1Ha4TNgZ5zWlToBYS1KQ+2b
	XmdyQ+1Rq327IKfvXqy1AJOeFGWV7oNZUZs2hxPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660952452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AuiBUQfJ0EgxPzRbzD8uXa824ANQYJds7TfcF/awYb0=;
	b=XpNetBaMutzH8lf/g1zZuM+Y13l440hxbBzz8/SV15GEY7321yk6ug9JJAlkPdmA
	8DQi85+xEg2fC13mtJBBwXa1oJ3IWWE9djA9HtpN6F5vVyBI+QP6IwhifNUyhacpM44
	wDj50faOLN0q/qUXGCNYyxuVaQ64bmwvjV24UzaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b87b1dde-fd921a0d-27fe-4d30-95b7-0fd688087d61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9abc1582c440c3e4d36b504f98f93bd542af62fd74c027f1950b3ce7355afc94
Date: Fri, 19 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660952452
