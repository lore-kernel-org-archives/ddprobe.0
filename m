Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9C04A14
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660938052;
	h=To:Subject:From:Message-Id:Date;
	bh=qbC8zEzwyn0cGyyGss2om3AIw8bgxDe22i8bHJBbycA=;
	b=kSSFRZ+YPlTRh5yPd2gvOzvfgj5EONjcD6WPJZlXQ5L9a7EoZGUPzIysPWmmQfHB
	665cCsRU9PmOs/FvpvdiMTjGOQ2ujxMgWn6oJ3k15xazdsrw3QW65uWunQZvgq3w0GY
	Gv4X94g9DtRSve0jF7FV5RL/5NfvnPg6YpJwWSSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660938052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qbC8zEzwyn0cGyyGss2om3AIw8bgxDe22i8bHJBbycA=;
	b=R69WIz6vFA0qb3uTo6UqkUfOuBHfXDYq1MxgFu/xEPvv0bJIYSaH/QicaE756bLa
	yKuCaK3wuYLEfsyj1VIxuwI+3HJkcREs/yCxUYK3kd10CPf+AK7KlbrfqUoPr4dB6sk
	P3eOh0eKFGC0WWKIVRQfYhaPqdzBo2WHVEa0EYpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b79f63e4-bfe3df22-6db9-4f04-974f-68331ce3f6c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc028207f9e17293e8047831f9109a75dcdc4ab1949b0cfa17d56c544b84f5a8
Date: Fri, 19 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660938052
