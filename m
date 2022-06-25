Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2907923C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656153412;
	h=To:Subject:From:Message-Id:Date;
	bh=e6JqoA8p4LK21st7pWfPSowb9ZsOJZ6IIZInH98HRG0=;
	b=GR4Y4xBzI9LZCIqaGparwE1KO+9otAUADn2Ka1yn822iVbBd++hGX9SHSP1iaxax
	O03nW81kark3w5tJDG4f7j+bR4OQRAHAnFE2D+IXqfB8OrVRBPAIX6/o//6VBmNIEtX
	dLlHVl+/3OExbnxthKUafKQZI/Lkm5CbUdgwpdlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656153412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e6JqoA8p4LK21st7pWfPSowb9ZsOJZ6IIZInH98HRG0=;
	b=ORN8s9q4Q3V+Lvf66IwfRER1ihOB7c4cm1/uuMIjs039TjUcDyL52o4ziTlJRvMQ
	Q2dLWGciq3541W4+E8qTlb71HNI+IjhBO7Dwv37kbt2TkOtZnZ3dZ+vqzu7ZU4SXkt5
	QX8w+A6bbqVct70Ouzpo349N2jod7WEyFw/VVz+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a6f92d8-bc7fcf09-1766-417c-968d-ffb99e4e7152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbc3685d072214410218447515b6d758879eba0ba0fa630990ce953f500c2208
Date: Sat, 25 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656153412
