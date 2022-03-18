Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CB715AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647572484;
	h=To:Subject:From:Message-Id:Date;
	bh=WZ3TCBT2Q1G2n93Uv5El8yB9qnFy5W5Lj40dt+AiUQI=;
	b=Pf0+PaUZdHUPReZLw4XE1FHd/EPI7JAcN5N1qtSMcGlZbkzsaGTLtTgFU8ovWV8H
	QXoQHrOymgaivY6choep7+U6rORn226TfmYW/ncyqjcyhK3eMgwenSOUn6wYfe2UDSU
	H1BrTgKawMUFWoqWr3btAhg/FxUQAe9L9n1C0JHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647572484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZ3TCBT2Q1G2n93Uv5El8yB9qnFy5W5Lj40dt+AiUQI=;
	b=DxOLS/DJBrBXs0bZJsJTMyOXloxjUsJN85kROk4IIeElr9CmrC1Qra1vl2TN1HWv
	oP31HJUAi795oOcKeJOgxMSb0YIaPp/d9Qr1nkAUCf8+ZdAhSEpdJQEsyaTmovGVVUD
	om3auERhpm+vrXB/gBA4OwbtfX7a3jkvthVAG+PQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9af902d6-9c99c6b6-7a97-4689-866a-177f913d767b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 794b321d318a8b0297c75a29adad6e2a1158d4d914c9819ba53b8e757353f8aa
Date: Fri, 18 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647572484
