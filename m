Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82703136C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646460985;
	h=To:Subject:From:Message-Id:Date;
	bh=CpfEzBmP+m08xuol8fi4ChfFWPgvC+KRA35PPgAmpns=;
	b=ZhpXZmIS79h3zDxpHoycZp8bFVfy3HwbNJAyeKcqlYCviLIKe6l6OUppaesI1kgr
	UOViziGc6egfXHfI5JINtEjvXeGSqSX++G1hdl++3/IpHbnlj8ZUClnkJdebm1NPAb0
	vEVKAVZsdOxOj92SIU5HCterYfaxKJz1En+rfTTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646460985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CpfEzBmP+m08xuol8fi4ChfFWPgvC+KRA35PPgAmpns=;
	b=HsXp47n7VcmpXkdC00ogd7iE34oGMVS+TjOiR5bCSmEn6yMPkWEtXjTBBdFHPhVN
	YLym7Mn5CVxHoZ5McN95XiYVwOadrvdNtuh1RZqEpfY1QmKYOxtrVwVEGnJdIQSDExR
	SRLUBu7QijvVLC4J/AFdINfm1NGy3cuHqsRe/jdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58b8ddc8-bf93a570-8de9-4a4c-9963-2bd08ceedd68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e337692f365f27306a881c8bcfeedbbe4bcfff41d2b55275d99a7f129d4c7a0
Date: Sat, 5 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646460984
