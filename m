Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080523236
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 20:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653336959;
	h=To:Subject:From:Message-Id:Date;
	bh=BTOlRvxzLbZwOBs8qJ6Fv+/4ykfUw3RUo9yD+g/I6xY=;
	b=UITEDzdxkc6fN5Tk/dHouPKmkSZu8OIViRbkYPM/nsAM/zxt0EsCe2tAQWKvu6Un
	OlkW5ytzNWih7/aFeLo3xMXSku2varmxWld0fzINWG2gTBXQ+Q0Vz60gpVmPoBsi7BG
	Mxwi51o6LAEg/kjJ/1VFhgDlhqkLjHJvhM+K4eyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653336959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BTOlRvxzLbZwOBs8qJ6Fv+/4ykfUw3RUo9yD+g/I6xY=;
	b=G5NRgdvY0uDzbXAjlSIs68i6OXxdWYXlZPussXOpwTJEhLHz3IwsmSfqoalgl0R1
	gba4YyQD01jxKIe1wv654PxbqQJAFhaV65IBvDHu6JnTcWsd42l+xfwwC0k8VDHdkq/
	lk7nPmxFMxlRnw4w1NFWI0di+gV3ncQfs/Alj/MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f28fe940-661ba225-0c6d-40ae-ac44-5e419b87510e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8695514b56414756a0103275be7790d3017bf021240d123bd6013446e3557c5
Date: Mon, 23 May 2022 20:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653336959
