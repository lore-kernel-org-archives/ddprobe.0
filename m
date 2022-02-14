Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739F6C8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644874584;
	h=To:Subject:From:Message-Id:Date;
	bh=KbrKrPArtjDxO4JzZhzF/QQPoTHbqZzGUI8PYs1iI6Q=;
	b=KQ7+8BBm5aifPYY+NEPKeXnGM3MaKlDVyHDwLMgY0c/hoab1HuBJZoJAoEvUQqTM
	M8yCl+tTVqbYMQdU2h5JOKSzyGgFq+FErvKnh2fjfcgOC3LOxTvHO4Us+2+T5loiJ99
	qqNjo6L8TuiNx6AGaZjnv1Pjyw00z2FI1XG1bYWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644874584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KbrKrPArtjDxO4JzZhzF/QQPoTHbqZzGUI8PYs1iI6Q=;
	b=kdPLSFIqPKLW9LqtcRD97rCx9STGtvavMez5Oc047bTQU2KjclzJs3gUlAvr0atI
	0jSAmAwJmQg028+EEC7wY1PzQvNYay+oULN/ug+GXkOFUHI1Gjplj2+fxMQZXGd80mr
	2rjul5Uk1uH321vEHqK9aYb/BReW+l15PmFoK3+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa2a52ca-efc60d64-0674-436c-a774-f54c3426b952-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd67c5e6518824e6fe883da6bc2d4dfe819939ccce6e4ed5d42e7d0de1d5d292
Date: Mon, 14 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644874584
