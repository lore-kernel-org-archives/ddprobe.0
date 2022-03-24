Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C137E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 06:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648102558;
	h=To:Subject:From:Message-Id:Date;
	bh=CitvlQN8aNB37D53xE+lrBcyUkapOCLa2QkDcrfDxFU=;
	b=mJ6dzH4nNYRjFH4A7Z8uCN8mHM5Gxz8QpV3MERz5QO0hvdSaqJL/MoWkyNz3OTNm
	/vqELvu1KIV+nAMhN0C0J8IA0LKylzRWDaaWzQkSYjAJYTZCqyIESSzRbkzof8oQG3D
	ysrkDgfhtGsLWIgSJdmt+WOn7GpMU/tvab01y8UM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648102558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CitvlQN8aNB37D53xE+lrBcyUkapOCLa2QkDcrfDxFU=;
	b=TROBy7RgQK4fhAyzF0LB0psH9xB+KIDnFwv+LN77wQma5KZJ7r3ZWp6ia/vApYqU
	xpFXI/iw3e2lfD2IjMzNTOYQbTPuCj/7TVjkY531Pbg+/d672giaLUgugecCokuPpvC
	7obX91kLmXZmCFdHqzvJYfmmkf8U/foHva1pqKOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba914a1a-f7b8a3c8-da1a-4b78-8c9c-38239e7da759-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 930468a77c22b50e3ff71ec52352447ed547141b8df22abe62123c1de7b3d7c6
Date: Thu, 24 Mar 2022 06:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648102558
