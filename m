Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0208B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 19:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653421379;
	h=To:Subject:From:Message-Id:Date;
	bh=7Wfz7E8qQ1IhMiUOKUrk2sGyyeJbeL02+VYVuaKrNsI=;
	b=kdtDnfI8Pi4ERGgAWkTDs3HibtERnUnCDdAYJN5QTkyH8WNhEVIse/0IzyRRdmFr
	K8vVonzjwuWSMxlQ8orOeAXDK5dBY12HXzwlGB68o7hR9TbMKbX+KekWuNpTV1FdKvM
	A7c5e1hDfLQnLAjCcIzUo3dROwT70ByMnFWqinfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653421379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Wfz7E8qQ1IhMiUOKUrk2sGyyeJbeL02+VYVuaKrNsI=;
	b=gKfKpTjyXP+nb5XA9Iz5wWzG5E3LzKDY8el3o6BwcyFyZccR1V7Bf2v0/YsYdHe2
	i/YUDamCG0Xl3une9DdXhycSHzsWjhKI9XqoNWa3HHhqpYYytMJZ9cSeaRVLULgsPOv
	lQpuc7E2P1CW2AHANdHdHynzw6/40x2aXx+SJZOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7980ed2-ea5531a3-e025-4d00-b131-222b06696df5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cb6dc7df24eb3f028fdc860c4de7208581fd4265c52fc7139fb125d47741c81
Date: Tue, 24 May 2022 19:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653421379
