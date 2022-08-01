Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA367F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659382252;
	h=To:Subject:From:Message-Id:Date;
	bh=z+GBoBUcTmNsi+gxOpg4sTS5y2jOoQTyaGSsoCqIXvI=;
	b=jG/NXnnAa03arxhWKySR72SEf9ZBORiJQGBqOPZD3QZBvOCAqlpfmwOQ/N1fLcUr
	NL9j89ZnNn98fHjI4BeCmwQWB/7RFOsFE/qc4HJr/+1CLea98Qf825pQavt0Pm4ScV4
	UGQitowZEzzUmhL+Cth0xgAtxnq3dFACTtcal0co=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659382252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z+GBoBUcTmNsi+gxOpg4sTS5y2jOoQTyaGSsoCqIXvI=;
	b=WC6z7UOooe2WcldXqcRrwLd9E0GvKXZ7hMFFDAcdLwyR7em9IRuaeu/WoUGvyUb7
	smu5Z+d01YUUJirypNxyHyk3SJzAntxp3tm8azQssYnNxStonshgToawOCcKLkxiuTI
	TXeZ534mysTMjUkrtDUXvWKe22Vm46HqYvDVVLYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ae3c40f-9de4a8db-9531-4232-9d76-86c528c92be0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a6bee0e8df9aaa559bd634b14c276f405dee9bad6c12ba4c0ce392cb383b729
Date: Mon, 1 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659382252
