Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642A3EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658920852;
	h=To:Subject:From:Message-Id:Date;
	bh=tdnE6dA1c/J6swt6IC9jzodIUAVUc3fCeYFqgta7tqs=;
	b=IVR0X1ijUGvRnLN1mY5OxRUDqWnVSLNTkxWXzGAUjuWER61aTBcyxPDHlEfMw7X3
	Loept9anAe76/JsyjK6a77R+L8i5cLdiaX6t7lsQjFHYjzLW2YkxEdaZxjnR0MFq8/i
	anDCChbcNlUwrfah8+BvwJDtptdn4zWeC2x1L/g0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658920852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tdnE6dA1c/J6swt6IC9jzodIUAVUc3fCeYFqgta7tqs=;
	b=J4/vq2SlUFtRI5KSl7VDBHZQ2tlGAA+DFgOn1MhrMouRyLneuCVIDBte/T36EL3/
	XwlHvCc4XQhWaKxYMFjleIoker1rhZn6k5VSLxHEU0+tAJDpO7SeZ0NT/orZArxUocw
	a1OxEo1CpyE8K/lDbjsMTLM0YB69Hb6UEyqd4f9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f635c38-a5de3f7f-1162-4beb-b80f-faedcef9de73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8c9d722af1ee8a70bc3063e3ca09904e459d05b9bafba62420472c822a43d33
Date: Wed, 27 Jul 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658920852
