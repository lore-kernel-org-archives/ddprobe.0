Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9981365
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659523853;
	h=To:Subject:From:Message-Id:Date;
	bh=X2elaBvBNK0jxcbJmPPaZNUEV5GFKqCtKlup0tzDRR0=;
	b=FDa5qDvaBwD4OhKFDVAbZ7sWxqR1js6+mKdlK735YwKPM8THo8AdWUXTQA5zjrkF
	elaIY4U77MhjyGONTD3nwspXzOyZxRBkYmkoLMC/hEZDEYm0lYPTQkK9T6ulpscYuD+
	rtsOSksDJ/OIe7klqyA2LZO8oyYG5vI8Vh5kOVq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659523853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2elaBvBNK0jxcbJmPPaZNUEV5GFKqCtKlup0tzDRR0=;
	b=KSPl/Vl/O4H/I4oN7eJlMQrxpTXXWtAMEFk1HGp79QiMN89rSDPjIWRLaJ9bed/V
	WXuh4w8f8I0TC28mtb9SFsu/GOBrTGOnWg169FFw3PSERl9QJKur8ZzMIeyCSkDKjHB
	p50E2e+IMuThKrkkrWBqYOLQeNPF3SmNEqFTBEnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826354697c-b10a2e8e-9d4e-4de9-be29-0e1e7fd50240-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e003e54edca9a84fc19f1b3065c5e0cf69ecfa7568ec0c5599b4dbf09758f7d4
Date: Wed, 3 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659523852
