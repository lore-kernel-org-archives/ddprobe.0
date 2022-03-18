Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4AF515AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647569184;
	h=To:Subject:From:Message-Id:Date;
	bh=NPT4swZW117WiHJMz1WUkkXozGPzw9GuWu1Y7Ci1HVE=;
	b=BvRcbSM1S4IhgHdfkox41V6Yq9XFnv5NTQkKTFszfTsM9fJVIFOgDm+2KRIdqWsG
	UNknhffvsVR6XhuvkfygRsBqGpQgTqzoxD+nGhJtb9vXIc1DkkaPzL3E1QRLLmvq0zu
	29ceHtO/xhtSsbFIclzwXmlDNvOUsdIcEQzEueaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647569184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NPT4swZW117WiHJMz1WUkkXozGPzw9GuWu1Y7Ci1HVE=;
	b=Hw3r5d30jxowOu5MSIGWZaWcFOZrhPyrUKV9rOMnMClfnHieUsUYbIL+eJ1mfUny
	VkG70j/Ef483ZayQ93LI81hS/7NziEhGeyRlwA7t9bJaRNFKPOQQ7SVoy1Bmlj2t6UQ
	trXbNY7ROmvppY2rtYyedq9TqDaLq3vQrvjoPmGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ac6a7fc-077a9e4f-84df-4062-95d3-fabb9843cba9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e960c0a6f936324dcdd8e55f7e234be365165e834a0edfac30da094ead630977
Date: Fri, 18 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647569184
