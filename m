Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415637B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 20:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655583899;
	h=To:Subject:From:Message-Id:Date;
	bh=mbxQCb946sGF8dddk8COYPjhwodq0kmYMcVh2AIFVrE=;
	b=IQPy+ae+crPhcFnL6weo8jzEITQoxuQsqziaJDbfQoK/ble/ax8eFLtrniCgHe8Z
	FkI0MBdrzEL4RUBab9XTW1OFdKUI3MkWoDFLTOG5oP5vQ+OxsYuMCRjmPXPOf/tYScq
	ghzY+JEz+t2fhkIjJ1kHRkLVSh2FD3CncVGn74Cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655583899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mbxQCb946sGF8dddk8COYPjhwodq0kmYMcVh2AIFVrE=;
	b=bGGcB1T5+UdGoAxqc2OM8r7OAxaGp26nc/nyEQZNGVydGy4RhN/C4GfsViAF4qV/
	xlggR5/kYIB5N6Hjczb6nQPHEdLcGtgX+wJtn5Xk8IwfEsoBLu0hJRuQOQbAS72dYXt
	wahq4Kn+wAg9fOyaHkcLrq4Y0Cgngeyi5Y1n4gPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181787d7edc-d8094370-7702-4af4-aa32-525e1d2010ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e6b463a4a05b860c81c690ea8ccec1f83f8e663f4a29296eebbec2c050ec377
Date: Sat, 18 Jun 2022 20:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655583899
