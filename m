Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370AB2F28
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660211452;
	h=To:Subject:From:Message-Id:Date;
	bh=1xNbs2ovbmgOyAXCqZMtlxE8HpC7yW90xVB+msI0A94=;
	b=S/ESlCscJkJYi+5z+j/Ow6MbSjpbJbxHvOQPkBM35w9ebMM/ZK5+yJylrnw6dHMP
	sicAQ5xPmGxZ1N41uQYjbiI4jvj0/DBmPFzZUMbMvcro3R8IGG53LlnqfV65cQ+yTM/
	P/pkhWbgOBv8orTHS5puaUhKluyx/keJoM6KoeaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660211452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1xNbs2ovbmgOyAXCqZMtlxE8HpC7yW90xVB+msI0A94=;
	b=Ws6A7vWPuRxMDBwzp6+ZYaJBTeB6+TAxFBR8qohySbTMIMqS58CodmRzMnt5mGwZ
	4LL+s6tMp1KrtYrTwOyV15LS2RkF20IQtc/D9noKXDPw1KQ8yh1X9StqAqxfiukNnj8
	npgBLD1X1cMAJih62M7WsZB941ExyJ2Izqq/w3Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c505aae-c317f74e-9b59-435f-a97a-e6f7468336c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6506b35ec71c3d65c42d8488954bf4fccd810a444465e7a204f23c671e88701
Date: Thu, 11 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660211452
