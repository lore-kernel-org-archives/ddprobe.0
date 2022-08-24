Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FF47E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661354452;
	h=To:Subject:From:Message-Id:Date;
	bh=Mn8HW6dTB+yHpe9qvjS+X7DInpKexA3dTU25pvvjLV8=;
	b=Fmi53t7gDg6jMEHW+LE3bctQd7S/UWHJ+iS2KlIjE+PyJbZqgC++3p7xn/ZhZexI
	QMeC+7zNmBs+UyJeCoxIoOULDTa/tldOzbh5RYjHu3lRB8Zs454I1JRT9XNC5K0XwGo
	CaIl0URxEN+95jLr4FnCcNtssqPQYCYscs1ZD6Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661354452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mn8HW6dTB+yHpe9qvjS+X7DInpKexA3dTU25pvvjLV8=;
	b=GgeJkH9Pr5D5ukNC8mfswspwP1JF8AbH4w+NSKbOcahjwf8iVVEWzD3enieIiCVU
	RLoUOHb4mXjDiXmQUHhJFhrlW2k9orDG/jo+G+XAK28XZP2mdEu119OlkU52eQVX9Dy
	2618JvX1/XBZlwkkwo/kabW63TQpMkjuCRdRLZCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0712689-302cb71b-1854-499f-a98c-0a04b4b826c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f072caabafa919c650171518b6094ec24bb2d4cccc67c7711e738f580208b9e0
Date: Wed, 24 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661354452
