Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DD81865
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657508212;
	h=To:Subject:From:Message-Id:Date;
	bh=Xz+iCds6uQm54N9/7GDZmjQ6+dk34HDLqjUXHrTsWJY=;
	b=TyXGSl2iS5c5OsRoKds7N/3k7rSWZ2RSS88pp/XJlx5MZg/8EsUDoIcJfGJax/+Z
	II1MY6C7g0A0TqCaLxcIx12mXP5qQ+jz5ByPW241x2zqwMioBC7B3dWA9JeRDH2aNlU
	bv4MPmL3CHp3YE/Hy0p2yyxZa6BklEG7b3IX9rvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657508212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xz+iCds6uQm54N9/7GDZmjQ6+dk34HDLqjUXHrTsWJY=;
	b=hdbf4FnCl0+hFMYEvuoh6wCeOKw8NVLqVPy0zf9lDi0QD/6xTNd8YNJWXKJ05nPz
	gdpVXDD3elXkD62JQyKZ653Zxz8iZ3Jwh0RDOSsBumlIxkeXs/Md+uygyDFE8YCKWET
	f8IoQVtpi4c2lYvSvfxM1Go9it4sPoitMUhf4jkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb302e46-b41507ab-9d7a-4960-876f-a994dfc484c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16db21c682155a38815833a692b8147ad61cde4c0d8d74806cb521bf9855640e
Date: Mon, 11 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657508212
