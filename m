Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778F71386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 19:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654283039;
	h=To:Subject:From:Message-Id:Date;
	bh=kYWAN6R+F6QVQFcum2BtB69GIUS3+LPbUim9OWLh3cw=;
	b=fH1ryPoqdQAj8JhQsRz+vyr+TtWSlUpwXD/vVyG/9IJZohTr1g6D+16grCodIwi6
	Vk3w1uzH+2rX/uqfFwX6jBvDnG8CjdlE+NkvVW1HYMXOUCN2U7BUN6YqSpgwjqWWcIX
	qofcMGcHpzsZZKm3/GUesBwbz8gU9RmsnyAEwo6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654283039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kYWAN6R+F6QVQFcum2BtB69GIUS3+LPbUim9OWLh3cw=;
	b=IjinXxfCYqZ10sBFhj1bu1nXaGqVkxudwRdK9H7CdZ7I4BYa/WaDcYThylUa8coD
	XFT6snmduG9VFnTDzIgIfLmriqCbkAUIkp1RB0TJ00RWgNTO8RutURXUjva4Z/JX/9a
	FrxtAv6DiU+9Ve3JiueNbQJ3vt1rVCgAri1ImEKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812af3f1f6-a550385b-808c-41a1-8f12-0919fd7c201c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b815886191c4f3b8155da03a79e517f80b6940845b92ecb1ce1e87aea4745c4
Date: Fri, 3 Jun 2022 19:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654283039
