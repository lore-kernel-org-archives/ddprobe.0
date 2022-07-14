Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815C4A00
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657804012;
	h=To:Subject:From:Message-Id:Date;
	bh=9TIy1ey720JtLl+fEhuSFxmLhpm/UrqOcXYGIpI9UAo=;
	b=lKAyukQkI5yx84UPGJWpDg24oYP9z7GWP6QrrzQz+/3CWZN/qB1wrrc/9UdLF+qS
	kbFyy2Sx4YUKwm54gW/AWf1NcboXi8NCsh8abE9GLGbr7w+XZOaN8EBUV8BC1UbH+Xr
	oQSv20J+vrvbSJ5aWvtGbz6Ut1KT9tJEpvCOYvfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657804012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9TIy1ey720JtLl+fEhuSFxmLhpm/UrqOcXYGIpI9UAo=;
	b=Ng/ClbKOtPMlsFVXyzbEU6JN1IXeC3nZzeEu6zbfwWXF/MDrSrhT0ot5tASHAoY+
	HXla9lo/VMa/NDwVNt/L6VBcXlcHlvMvu+s6DJal7miCHOdohkVeX/FireL3/MyUtNj
	MeGY1Kyk9QdfQDC1s3+qxkhk7ENIjHpq5kEaRCYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fcd1bb24-e4f8b151-387a-45a3-993e-02a7eda12414-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be87aa10b45a1bc60af6e5a0ab63e9b38bd4d3d1acd5a1107c491409d900e10b
Date: Thu, 14 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657804012
