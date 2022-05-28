Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF5B1851
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 04:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653713039;
	h=To:Subject:From:Message-Id:Date;
	bh=/ixDer0zIFU79KwgVFYhRJ3Xhl7hDzHUVVI2DqbegzI=;
	b=cBLWIUsjJbvhncHT+4CP2jYKlStHx9ykOwvIwx4zjC94CTPF/kx+4sPw82JmYi5q
	nRJMfXPWtfUg3QojXh4MSaiFWzWsgPmEzXOGvKCw7CQ/Ahn9Ez0ZZn+Wt+8qWU8VDRa
	HTuyyq1E1OHdQD+gbG21Xvv3PgA/tCSD4S+K3GVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653713039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/ixDer0zIFU79KwgVFYhRJ3Xhl7hDzHUVVI2DqbegzI=;
	b=daXMCt2Dp4Baei12lXNYKzMOi+xhmWbBf4kytDQMp74HnV7dxS3EobY2OFGZzH6Z
	tjS/cyia01hh7DQWOcLoEkzoKhSPELCtzIT69vdDVL0pZsAw94kDZhU/tsG5k2bu88D
	RkxZakH7ltILqEWs9ZHj1LZNZdmoatvbHt4YembE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108fa6fe6-1d31b373-bdc0-4503-ba55-cffdf36597f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00dc0f87aa04d72e98cbdda419790e01924555e20de16805455bf64750ac6f19
Date: Sat, 28 May 2022 04:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653713039
