Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128B57A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 00:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652401619;
	h=To:Subject:From:Message-Id:Date;
	bh=ly5O9H30BXjxDm1p1RD1Kyf3hmdNkSM5rsSZmhGsI+A=;
	b=joSXGpHnFPIGuLDwlFBcfaVIyX+Kls+Ug0nyVwpbfyPxtz27OW9h+fadRa8B3PwX
	vbZlPjpXVWC95pYdU4EYSMkjb2lU8zEDWvQuHwi4cwqkNLLTXhEqkVqHxTZ0mQIAGr2
	in7U9ApR//32TFVHq7SLiz5Hph9Ec1z8j+LDNDTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652401619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ly5O9H30BXjxDm1p1RD1Kyf3hmdNkSM5rsSZmhGsI+A=;
	b=ZoQKXfMheUzQe0nT7jCspEhpO9sjgOxd+RVDDAGkvT6EK3u+m7zE/TsuSUidruqw
	0xJBkTPomIQVJg/JVpKfMsxceI7lhwJONNKJa8AcvguckwVw8RrMBk3E+1SgLG0oiip
	+6cxr9THsLXZnkCxcYE6NSXshR3wZEKTs4UbaJuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bacfc12a-9e1ecf26-5e26-4d42-8b6a-0adcd8b5394f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3066d7529f9b0d56d939fc8d0882d7c23773692d147b6f8314221e3e33e4c625
Date: Fri, 13 May 2022 00:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652401619
