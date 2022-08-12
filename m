Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6FE366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660301452;
	h=To:Subject:From:Message-Id:Date;
	bh=9uIjXeqPageL2RLRH6TcQxEV6OxkR0AvWdOF5AX2Jj8=;
	b=NJm7Sl1Lukpcexk/nql8+69o/KCsQHQeiD6vD+tAoEzgvTdVNlM6e4b44lkGiNBc
	pY2MP1OgNI9xVib8Kh+dPwDWf+moDzO2DLtGqcrsu+6E0a2tdpqef80YzbVrhJ8x9rD
	IPOza3kCT7mD9qf0xmyEHBe2uhn9Ve3ucKn3IJEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660301452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9uIjXeqPageL2RLRH6TcQxEV6OxkR0AvWdOF5AX2Jj8=;
	b=kmPjLsfDqOKQOJT6svNovoUnE26hAieWG7LnTdX6RHQxqiuuOyNJryaVRwxnjF0e
	e7j1repg30jDAah2zFVNhu9MpdCy40LGQBvaFiIII2LTz1foQqFSX1QkYLlmsURLtp2
	HgjwFvyPDuBAqZDkp8IjXzK7xxEFkosW26qrH/Bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291ada4eb-e970396c-d8dd-41be-b1d2-4c15a362c91b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c015e6761e55902b23874da8a33fdd6a5b108c76608a00375075c0ec08a5db5
Date: Fri, 12 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660301452
