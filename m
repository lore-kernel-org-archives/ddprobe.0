Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3240217D0
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656994612;
	h=To:Subject:From:Message-Id:Date;
	bh=bTiffC680g+/YEdP4wUx49H88bHKIpUCYbmbIXBZnU8=;
	b=VsqmgKGFM7LKpwCRRkdt3JQ4yvrfMNIzrelDNTBlot6cNk2M7jMAqx5NTjueO7A4
	DwpAyav6TSVT4kckzU+fCfVSI0BEdWqprDbN8Xi0RYmuPlZOAPRQR3N+C2+UTpjuYRb
	d7bsokSj2L3RtaZ8797QwaTWnlSsm5GQsxSozXec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656994612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bTiffC680g+/YEdP4wUx49H88bHKIpUCYbmbIXBZnU8=;
	b=IUlmrWNUDp4RsOQMu4MH5/zuBeSgIftNfUW0YJjkNROOJQ9gk15cSI0fPlSL798W
	rPE+oLK5JSRsepqidyEZl3WdPrXicPhrjw3zA/Z/JMXq8p/8jgSmtHMynHmzRHxR5F2
	1jFVttNp4QcbCYJI4ft2uFBCVWpKClXxROfCAvWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc93447d-892eda29-0886-46fd-9954-425ef96ae54e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d77b3f1372675a8258a63ec35065b081a0a3a7161171eecf8a063082ec71f18f
Date: Tue, 5 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656994612
