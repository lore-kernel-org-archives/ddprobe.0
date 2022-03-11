Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3B133E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647014485;
	h=To:Subject:From:Message-Id:Date;
	bh=I/M2lzqz6xNRLt9MsWMTffkKDhN9NohlU5RaP7msebI=;
	b=KNEB5/mNeahGe4AkSx3Ag+tLa/A5nWOr/Olobs9Uf83oC+03G0eutoXwkYAb9YRp
	2TxdrxR3boghwthQAk+P3OAkVGA1at61AV6AQ3TuDxCvOLufEqWHS/szuUmFZ8reTYu
	ix+oF92iCdJcOq+BZOE+h594VwJd0PeLdBkaqQtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647014485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I/M2lzqz6xNRLt9MsWMTffkKDhN9NohlU5RaP7msebI=;
	b=De0X6w24BsO33Z1s/2qb6kQk8jTHN6pqZ2oHrzYBO4u2uBS+J+OqrhynhJUbMnWS
	kXLmHlT0jezavbAmQdImqOHwsAYZsMArxVmvLongU41TtZ4woFNH1d4PN67HWe+WKR2
	zEXbYc7B7OMWEYrS1+Q8qZFsOlUN7Fsr6Kc1yluM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79b69b12-b45b2d15-9bdf-45ea-8c4c-3c455366017d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ca90fb92f361a1d704f255ebb1e8f5072f235300b01939775494930be528fc4
Date: Fri, 11 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647014484
