Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614F24680
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658420812;
	h=To:Subject:From:Message-Id:Date;
	bh=mN+Z+UKx+IM/P9XWyMCC8BJqUwAn6l2no1qoTDG3510=;
	b=Ph+M9LKEvx8UbiN5yeKGQGraky4o+8pVihzvUhsE0wHU8OCfOcHDxCYP+uFwEMR1
	uZSwbL3MCZ7T3/LGa0YxgHckUA2Pu/n+0jV+CkiACU/Nm5f3jYyQhkiA8c8LapiY3MK
	1tsXFDbBE1WTd7Ye0aqD/5pKOWZqgjsd5uMmve3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658420812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mN+Z+UKx+IM/P9XWyMCC8BJqUwAn6l2no1qoTDG3510=;
	b=aefRqlvA8gV2mVzNDle7CWojJjHzyP+jO/VgkHaJaKNQN3fKse6RfOMAf0kxjHhV
	ls5IIPbaWqHMG3Xv5B3xUCm26Py1ohGljERjU0h2LL6kzqJ/vkjke/K45/eHwqiBUbw
	FvGphXjGEpj0Kkl6BhKA7ACUUXadqoHqqgO2S0dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221955a34-1c7c0885-96c7-4c15-8977-c67a9af0fdd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e11700c5881509ccd84bce6519d9950ddf167062ca3f9b68f14ddb439926c1
Date: Thu, 21 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658420812
