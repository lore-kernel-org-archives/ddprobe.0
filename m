Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E5A7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 13:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655557259;
	h=To:Subject:From:Message-Id:Date;
	bh=NQHuJF0wjkz1h1CcG3vvPmxAeQrVAMuEGaNWDiBb2MQ=;
	b=SVLCKV/6DYzghCeprBdCIzRm7+nS87FQqWdzEWELYFn0uJvZFC0XJ5ph89kL+CDC
	mkyZst1JA8wb/AhqxQd5jMopUDweELNPxpeUQCjilnti0Vd7leQGH/AUGPo8U56KkqS
	7rhK6vdkQe3lU8DVlNbDTrOz8KWUa8D4eTEgJq5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655557259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NQHuJF0wjkz1h1CcG3vvPmxAeQrVAMuEGaNWDiBb2MQ=;
	b=CdKxPYCZHC6IIhWLlSgE8I8PAaqFCGrtxEHiL7Dr91wnOomepz4IxkOyC0DfCbjc
	V396wI26HgDCPjYmSOj3TA+3JQTNqNni08fOc1k5Y8VDDa/iqYtZewHdQW9zrjfr3GO
	kM7gAxGM7Gy3SGK3Fw0AqF9NIfW4avaqeZ78WZNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176e6ffe2-94e8aece-b255-4e8f-be8a-b68acebff60e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46bc5787dd0aba66c129b63d5ec6436a4ae2ce6dd06c0c6c0ec784c38aaa2742
Date: Sat, 18 Jun 2022 13:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655557259
