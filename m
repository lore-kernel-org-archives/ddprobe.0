Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C54D2562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655738579;
	h=To:Subject:From:Message-Id:Date;
	bh=idO5Pd1fY4kec/5Y444N5MZz+IW/0DBChp599ZpjHQg=;
	b=VnmO2LvjiWC/1ItBp+72dPtnLlcMErTxLm+WEKzODVWAax4/WNDYNB3WiHRdzyXL
	v4nl2GAK9CXWD98TforsaGGS3t36eOee+HWDsy3H24O7QF8jcKWvNF1TZDH3hkQHoEF
	TFdRdil5ibNXAQYoTMjfEyHklUE2Tt8CQzUtnGZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655738579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idO5Pd1fY4kec/5Y444N5MZz+IW/0DBChp599ZpjHQg=;
	b=Yi2qRhwXm+SmGHgClsy+UTs/9z8hS0a8qYsR+C0nZ0cWWtRTF/ZjBXNUWehElbgT
	yHlM2vh2NR/m8nrS5NvKqltOFGTXhKlZy+IZz/dh8FXjYXkQ0A9OrayzFVmXhZMEHIi
	PtcsFjoAGQBxMXX9XQ9DPxRkTsvvi7CerO0De4AU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181b5b904-3df45eee-85c4-4aa9-b3e6-99d8786273e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df0b2ea259d7e042ecf793b2402bd52afe8f71247efcfb04759f16e3c9f856f9
Date: Mon, 20 Jun 2022 15:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655738579
