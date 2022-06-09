Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20353210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 09:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654766099;
	h=To:Subject:From:Message-Id:Date;
	bh=3cOLdn4CjR/0r7v3gDdXZNXVN0QaYLoRN1BuAGW3ed8=;
	b=Uxqt6jwunue7fhbzdcwX8+5NcbezHmlav2GPypz/iav9qkPOG3Kg6StbbeCyKl3Y
	TG/lHD9K261mxBCyanWjb6CzuVJeM0rbiGDWeqluF//wKrlI+GOEZ5gsb27oEq8ExGM
	U6ZJIIcJGLkwwUKZnE30PwNZ4qoB7B8tSyICqrxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654766099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3cOLdn4CjR/0r7v3gDdXZNXVN0QaYLoRN1BuAGW3ed8=;
	b=VhkLJdcJDMi1lcCmUrg4ekDau0HM73y1/RX08xskVSJ90HhTzl7+I0EUPcTaHeEF
	Se/r/KynKLbgsptEDBsF8sr7BTAmSA83+7o4K+KB0+XYD4MNhRw6qkgSB+qMHwmtyL/
	ne6YnaeNjy847iWlxQzIzKS4yG3HvT6qW2Z3Zz00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147bedb19-5a93fdc1-3330-4937-adb5-ad8de90ac910-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 560a5408c22bb8e2186a8d5fda4db3b93c229eab937e3279796ad5be8ff89e2e
Date: Thu, 9 Jun 2022 09:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654766099
