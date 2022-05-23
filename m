Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0957F36D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 03:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653276419;
	h=To:Subject:From:Message-Id:Date;
	bh=zPz9K+yoJO7XFUPBB7TQsvArrfXQYWLkgGUuCTnmVSE=;
	b=YkijUUg7H+LW4VlnyfvhOsAUl3HeFFTs88yLQVOHR9p0dLe/BDW+6CdXh6j7WnvI
	Johpr7UxdiIdWl58cFGZBVXoeTG1PgfACFFh6yNIbayeIHDI0lZ8b6vusXgom2hQ337
	8Jpx1wyb6STHDMXD++TbviesV6LV6953N2BHWdls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653276419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zPz9K+yoJO7XFUPBB7TQsvArrfXQYWLkgGUuCTnmVSE=;
	b=Mx/fLqfC5VYUSVuMeRbYmz7xhm5Fx0rTDonOfr+LK2mbdUn2lshmWp1OZlYv2g7Y
	MmH1kxw06dpYWX6r42Gwx11+yM3VOr+M+ZlZ4gvfM6g57QQW1XYDgD7cW5lZqrQsmKe
	fLWLgL0tWitEA8T+N66hEjZqB8DEva1AeyPITseU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eef424ee-d715c4f4-60ab-49eb-a914-e82d2cd9ed3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 745b658d5414fa3fe78726415c13bcc600a117fc523046e65b2d2da2c9f00e8d
Date: Mon, 23 May 2022 03:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653276419
