Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D447F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661155853;
	h=To:Subject:From:Message-Id:Date;
	bh=KElC6bxflTYmnTDVhVRt3FWw5UNhsyszl5GT43b9xSU=;
	b=b7tck+pkt0tas+YPT853cwAc7U9dwJRC1KVx1xwBxS/lihuFw9lZ3htZlb24HX+T
	fXTKc0C1nlYXyf9dixkWjb9I/k81hv89priWoKURwpjXutgCvpFaHlJ0VMsZKgWoz5U
	6Azeu5gTDQOeBIOOjguqgy4aL2OuqZtzKdQiQ6mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661155853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KElC6bxflTYmnTDVhVRt3FWw5UNhsyszl5GT43b9xSU=;
	b=ZMxbdHHq6L5rNiqpJ4WPNDHqc06R4jAWoXR9WX+XsqZMBG/20kmWrWXywn5M+YvK
	sCKLU9kzLWlPdp2gycc79CCX+2tan/mtmMjvMyuPsn0g/ZILIBWoHXp7P8e5fgRPQrZ
	p/XksZbr3QRahPpVe2FNx3GXkFVH8P8rtOn7lpkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c49ac10b-0da6a93e-bab7-4c7b-a9ba-b8548bbafe29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 651cbd66252f64d8e7ec034de32c48d11c479767b8267cbac863fc2c97090b1a
Date: Mon, 22 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661155852
