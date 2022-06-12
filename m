Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED36B1369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 18:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655059139;
	h=To:Subject:From:Message-Id:Date;
	bh=tRQR3MzDCgNf9e7VnIheZq0GsQQlDCwDOCUN4XoOfVg=;
	b=Vr96L0ox0nlDk28affoiZMz02UP9NiTlLCF1quLzHcUd2aOUDLMdZw8+XizyptFE
	8ACrWN3gIug+/nSr7Q30+YcXqISEPTAia0jsOQhUZIhc7XPzILyHvuBvfZ8ZM08dlMW
	j9T3+QS/om4dg/Rmibysd/lSRXa7m1GZHiBDFY6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655059139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tRQR3MzDCgNf9e7VnIheZq0GsQQlDCwDOCUN4XoOfVg=;
	b=cFUju7AJszFRBPBH5S1aB2gSPC7RMUHZfUfizhVE7ITkyKwnjojEzPxrsqVLEruh
	w0SrzCy0Yda8pe2+NAUYpCOjB02KPb/51agHjiuoXVWR7b6rUTZdkwlsCIWgf2OWMtS
	EEO9hVlbNoaq1lGSTh9YEsak4OURtvE2mM3zRfeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159364a7b-e52a9001-020a-4a64-a9ce-745078a66fad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eae3a63e8576cae370d04a5b66f6242137d54d26aeb5372356bf48aa90a172ef
Date: Sun, 12 Jun 2022 18:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655059139
