Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C17E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661323852;
	h=To:Subject:From:Message-Id:Date;
	bh=BqANqOrqqD1gk2LWR6BOypSmBBNSGNjvzB+UKK1sOvU=;
	b=NiTuNkXXs43KMlAs91Og9e7Td9JefisKmu1uU/jL/5wBDB9n3KHnuaF+jW9FAFjZ
	9DbaIAufhE9fIW2tYgxS+gmYSX6QY5cEqxQ2dyOIxsZSseA/visMsQE7sCXUjIlEUJ9
	pJ7OHnuKJ9+M/qv6FYkbI3MkalONNQ/YuuMMA3o4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661323852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BqANqOrqqD1gk2LWR6BOypSmBBNSGNjvzB+UKK1sOvU=;
	b=MvksXvH6lbaQema7P30FQnB9XkD39RmARM/a1nKwNS+fZQrulHPn0xFeJ3iLUW+L
	JYPzyd3kYta1Y80HOQxDcuXk7GU9ApxUh2CBxB46yREJiPBcrcOVek3QCtPYrzasb4w
	aAC1yhrGm/AUnAnTH+hxv33iveuUoNIpVo4ybsME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce9e3b14-49ecbdcc-2599-4c95-916a-7572285c8bf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fee683a5f078f71f09ba91a080b44dfc6af9aeaab1cfdcf4d7e16c5e2532e7e7
Date: Wed, 24 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661323852
