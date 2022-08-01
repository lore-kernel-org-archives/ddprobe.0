Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E33C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659345652;
	h=To:Subject:From:Message-Id:Date;
	bh=csbB2zo/bYTYCLf2XX/6TbJ54bBVXnkoe7S2ZehDIUQ=;
	b=BO8NOgX3OoLg/Ai3DZ8oIKc1lKo269HzQpPvvM3Dm2nAO/2SWfM7PG/O5nPO6qRi
	WGFfeqaXo/8rbleqLzL0zfvWNj3FUHWZoXAEnHeN0cpQmE6sY+LNFeumJJOnfI6w0tm
	mNc4dDo+KDw2jfcUMZf4aLtfK5/CX2OZozdQkroo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659345652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=csbB2zo/bYTYCLf2XX/6TbJ54bBVXnkoe7S2ZehDIUQ=;
	b=dvWZmIiLh1Rp5gAinF8lpXkBafvGZV+0dMsofUPpQEgQbArIcBzDjNduf8oI6EJ1
	5U96T0I7AcnxA3z8ev+gu/Vmiady/fCxc+L8JakI1JN44mjFqA1x/9N4tMUG9hEvoG9
	QHqjCj33kYVKYbJ66HiTOIH+7wXHfu2VZuhyWqC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258b54b41-2d95face-0797-411e-b11d-4e4b7df959d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8158a27a9873400dbfe07612e7c34c62133a67e3a934e52c0004a5afa961ddf1
Date: Mon, 1 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659345652
