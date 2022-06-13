Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1329A1119
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 09:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655114159;
	h=To:Subject:From:Message-Id:Date;
	bh=sm6dZJzV7KdIGAaIfzernhV3jh71J0NJcNz5VkcSCMA=;
	b=CAUww6vzKQpMbamKd7VJ/4i3Pxt1TUURjDAKdrcM2XPo28tgXBmHM1zbpx+rVraf
	Ifaro3fV/ixTdfL0cEpbk8P2qO/dQB/6swIYjlnaVwCIl6pOAcF0FpUz1NpZ7suVWPi
	ETLkrBakC1MTOIfktnB2wuRfnFHFiVMl5EFuKk3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655114159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sm6dZJzV7KdIGAaIfzernhV3jh71J0NJcNz5VkcSCMA=;
	b=VkaO0c07qHPi1VTIMxXoYMQJWixP6eB8YJVr6T0OcFM+Es7Jo7LWGRk9P69fALBe
	Wk86HV3jd+JG9J8SLIzdTEzZ4xXwC12ItYGaahadQzcIh7EaTT+5AJm6dMuijZeqBkR
	ZdLNk1Ur6VTrlvKf6kiGAK9Vxbt/85+nQan6OJdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c7dd486-58a0aba2-46b6-4e21-b1d9-73a8c86cca18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38ed801ffbf96b2e1e178746acd2fc60911a21ce6fedb5953b0b7f328535c67a
Date: Mon, 13 Jun 2022 09:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655114158
