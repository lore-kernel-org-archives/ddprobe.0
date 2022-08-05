Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611FC184E
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659712252;
	h=To:Subject:From:Message-Id:Date;
	bh=g2XQiVt4NPdbwpASVWM63KkauGrObuD8S4q5r9z6HbI=;
	b=JoU1yeY0HXskJ22V8hq3ocF+Z9lN1dT32AXjrABzOTWiHyyUziiqWPnjoP5xVQc9
	35/h+UDYMTu9I8qeSP6R95YkZq581RYhcKz+Ap5KQWVl8UQqANgWqj3QWzevWivqv0q
	1BOo4seZ2bUl3ZOAKQqqb3WmMZLgb4em5ODejABs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659712252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g2XQiVt4NPdbwpASVWM63KkauGrObuD8S4q5r9z6HbI=;
	b=LKWZ2wF+iTOYiQcSa4F/6jrQ65qu8+qPsp5aPE6idMsOAHA3mawi/tB/gxr/bceX
	3QrXDpSF2OQUQ7wNdi/oNLyKJEIR2WpnrG9aZ43i9aAxjUlBA2rTom5Xe6opJcm5SdW
	8/Qhk/fLOX6m4RbKkhBIZuDwI/XkE72ia1SySWAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e8f2aa0-0ff4b868-33ca-4c06-ac69-8f2491c23e13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e49330cb005f9f450f14d3d39a000b2b2d7d0c1182bf2565c79fd9ca209f8ce2
Date: Fri, 5 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659712252
