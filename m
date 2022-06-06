Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9F823CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 11:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654514219;
	h=To:Subject:From:Message-Id:Date;
	bh=VSxEDB+mWqo2VHpc7TEot5AHcR4cXeox1GAG+HNDDUY=;
	b=eZDJytyjomf0q8rfphaGhzu/K+n9GzcwSzYnjfhJfTHSko2Oagfvg8i0k9pbNkIp
	CvpRaX2LsyHcRCjSvkTUnf1O53n6bgQB46hPz5T/EBdHDFUOtNpTe0uVd/a/eKQtpsS
	a/YwlFH3MQi6MRvj3b2ZKX/IhtnaFLHh82XjeE+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654514219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VSxEDB+mWqo2VHpc7TEot5AHcR4cXeox1GAG+HNDDUY=;
	b=FTKKftp1c0AYDmrRkoZWBAWxhchbk8VZhymn7r3JsAHJTTLd2kGLD2JiCzpSxyYE
	OF1FYyBp+qfNxywi44CWY8fye5nglZ5TuLVh5K620RIj+PXCceGsOfDNs6iuE7qvTYb
	rxaiM00iWQ10KG3h2+RQiB2i3LURllUyvxHRmqmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138bb78e1-606b6fc0-369d-4a15-9ccc-f86b9da981e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cef888002ca489679257eccbacd85ab9677d8d32887d49d925727cd727b8f2a8
Date: Mon, 6 Jun 2022 11:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654514219
