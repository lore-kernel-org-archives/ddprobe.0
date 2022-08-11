Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCE82CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660236052;
	h=To:Subject:From:Message-Id:Date;
	bh=ByOqMdq52+tSxzh4PN1uZfmS9HqdbgNTUquPHhS0jdM=;
	b=Lm9Yx8yu0xAcZs65hjIjGhnii11Jn/P5jp+kX6hT/WHAdmODp9XccE8Tt+pXAtNN
	DkGfSZwwGPLgBY4NBSB89hKbHTu57LK5I7vRrYpBVCbo7OWkBcbV89oSlDuEt4K9H6I
	t1j15fdBVbFrAVB4oegyuUEn2QtNxudml+QtcW4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660236052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ByOqMdq52+tSxzh4PN1uZfmS9HqdbgNTUquPHhS0jdM=;
	b=iiR/P0eY9RvAXuygC1w4fluJ9dDV89mHEkOcC3Xd1cMfmUhbVnD06pZTcqOhMR1g
	P+vZnZn+tOa+DG7dlmAhhZ/vB9uKaOMyxi5WqFHLZ/+dmsAJ+w1JU3yDsvM7jz51zH+
	1gfAZcUD95lKaUs9sMj8FvGvmvu3H7s4sBH+Ihj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828dc7b88e-21348b06-77fc-4974-874d-4e2db66d9d77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 640104a10aa8a62bbd29e95a5f7551e3082ffa7f321e04cfd4f65066817c9fce
Date: Thu, 11 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660236052
