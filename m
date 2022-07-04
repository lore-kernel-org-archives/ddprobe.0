Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CE723B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656928012;
	h=To:Subject:From:Message-Id:Date;
	bh=W/VMzViipvJ8rW62Ptsi53yz/xBgpI7FIIArWeKZCQ4=;
	b=WshGRuriD92gCoSSwN2LY+L+gRK6mh8cRy/FEQ7Wj55LIX9CrzfpcELH/8s5p3PZ
	l1d48qACfCr7LuY5LM1u4oYAkYEdrB/+0NpCmS1RPov5qnP523ZA3P+vk8aDdkfXOXV
	9FI66MwhF7nWrOCFH5V4rN9S0W9s20AJee+v7lCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656928012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W/VMzViipvJ8rW62Ptsi53yz/xBgpI7FIIArWeKZCQ4=;
	b=kCOdSMU+y+EGSTrmGy1TlGKzDEzr7MVxN8Kyj6+Jvm7751jUSlPt1yoqFRJRhZeO
	Q0NxzTydfh/eUZc4656uW4A5bRoXieN5i1+N6QE2wClIMz23SYES82CIyKPrPtFLR3T
	ZnSDj6REtDYxUyT7MX43xk4Ro66EwaF5bn7MPnT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c89b0805-b13bf53e-5733-4ef6-844e-bfbb36182563-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc5a5fa761cf2d66bd42e10cc388c3270c6d2c285d263f52e69a870311a75194
Date: Mon, 4 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656928012
