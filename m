Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEE17C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656032812;
	h=To:Subject:From:Message-Id:Date;
	bh=7vyMOO+pVRck0wh+fAowXPKm+KcMf9J5DIDw9lLIRaQ=;
	b=S31uvA6+JHea3GbP/aAqifVhJqd4rvjLaw1Pgl74jMvKXYz0uwChftwgCDzT3r+V
	qfCRsXrssOriFX64CbZTpdOOL0WQeGu/TEKOlJUvhehUwQ7t+8XlQpf3zwAxZ6l1BBb
	dmc7FLlQlnznwVvp9NxwBIoDF5EdvDDYeZo50hq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656032812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vyMOO+pVRck0wh+fAowXPKm+KcMf9J5DIDw9lLIRaQ=;
	b=ESrYmEVBsYm7uA4rr5anoZ67iB37zXXFw87xr8ZKTdKlfUXF6HwC3rIQKyKR/4ai
	0oUvJEKNLV1jnOIMlntsv9mStrR/RpM8K4hIIjGNek0reBmO9eWnlqeKJUPETwnOBrV
	PLB/m6VUdl6H9zi6R3tDOO882e2lNSpduP6H7NNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181933f5d34-8c5e0e04-eec5-414f-bf04-71347138f985-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40b1d20d75c42e87493457273890934d8d038e560765aba7485493d5a282226d
Date: Fri, 24 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656032812
