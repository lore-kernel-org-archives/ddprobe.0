Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083697A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657776412;
	h=To:Subject:From:Message-Id:Date;
	bh=iIYXBVfiCE4/WkgNnKUAn022q2oTEVPYCnQ5DwUkYhs=;
	b=LTbiWHfQHvhGj4Dp5t3dIW4G/tn9Cp0ygxvVD9kEZGG3u5jfB9pU1FlG93gk02h/
	uDakmXZny+0Aq6w2wyZl3+CkFZ1zcmdDR62XsERAiWbSur1jRF4ZPflp7wKu/Pt8JC2
	fQmWhAHqKdbkvD7YTQoeSN1d+SAScTocCdVH1Yl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657776412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iIYXBVfiCE4/WkgNnKUAn022q2oTEVPYCnQ5DwUkYhs=;
	b=DgOXqz8Cl9Eq4xDegDbI8CjVIuAfP02hbRlqOlHgi3rg4wwNwCatxpCl18biSXhf
	jhxo/IfdC2JBubtomo5P/edsCAdHV6w0ihAB/oJd6ZU6o6/X6lCkrFOA5917yQu85jS
	czO2vZXUoZ3F+0aw+o7YY3i03ys71LHnqcJR5HBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb2c96ad-10c23bdd-6b7f-4427-8b9d-34d8045ce133-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7d8e679031f2212965d1fd7cb456a52cf26f7c7e1745eb65b51ad587b66f008
Date: Thu, 14 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657776412
