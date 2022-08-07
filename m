Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CEC7C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659840052;
	h=To:Subject:From:Message-Id:Date;
	bh=4kN0ibhKq72Lv2KlEoONRi8lZRDTdB7pEgeg6oBxusg=;
	b=k7c3dy9D7VzNLWtoMIoMsJZy0kUFgCbtUsUZopMJlt2MO7FETMmurC1tP+wzyWuU
	+wi44+nd2dI7hL4fFhOZEYVk0VWUOZ/WAgWYjL7CmE2acKvH2mV4uronYXbhgJxyiig
	qhirUp35EOPMcl9sUz/Hrvoc+5XvUihTpaydi580=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659840052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4kN0ibhKq72Lv2KlEoONRi8lZRDTdB7pEgeg6oBxusg=;
	b=kygzj2S2kE23+Qk7bcVG+3INz8DD2Md+qYqXWPKLflI2VCE0et+CNSrMlIGHTACg
	a24uC4AfcfmOkp7MSszE1XI6ww7KbTusC2+5xKQPafhBM45swpcA4Ge3qZ1dCX6pXXZ
	7DElR/pDb1UbiAdon6qoe7Aor/imPnD70ujGMl7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182762d3d8d-64998c68-3c2a-4a1c-ad3a-bc1c951272e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17276bbebf9001eda01cf840004f6982365e9b0c53ca797e1c6cc115b021d3bf
Date: Sun, 7 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659840052
