Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723A1FB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655228039;
	h=To:Subject:From:Message-Id:Date;
	bh=VcQHBlLfydi0K/oe+kabh7Ts3T6kuWRi3befdbWEhOU=;
	b=bwTX7omNXGsbtK6rstTPp9/bXCNuqyEwVi4C6Tc9QeCqNf8d/OgAf+8K7vAt5bCD
	JLgeylRPJhaSLfHgsR6m6Iikx28dAfPuBzekTHnZaQx0cFnB2jXe6Zx7pQE2romSa3u
	YBp48iBTjDG1t5h5bOmtQgLY+Jny8yhT0GUodmGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655228039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VcQHBlLfydi0K/oe+kabh7Ts3T6kuWRi3befdbWEhOU=;
	b=RanSMVYKqcb0cUaCEGdxuMrl+VCkdzdzRTG5kJMVGc5pGyTJf7FJQde6TabepGVc
	Lb1NnGjWbVMPpy8JgL7W7PucBVVWu9IeUqmspD6kiU16bJWy729Q4ALaD9LhNPtyUHZ
	8caoZQUrg6iavHjLFLVdVJCdQam5y3VAV+kpyGKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181634780a8-7e97b1fb-6a4a-4d8b-bd4c-8e95974a7c94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 709bc9cee277ddc114a0c530c3cc60f650b7023f31e7276ac06b381f2006dd80
Date: Tue, 14 Jun 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655228039
