Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B131B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644995185;
	h=To:Subject:From:Message-Id:Date;
	bh=ausxBPaFCVbdUDiwHvhV1sJcvEXUy6XGmveDaxQQcZ0=;
	b=ftcrpUfIZjZVuAgtIiNlIt19glPkSQOzhMbXswoEi3bsz9+CZCAqGrh0EvFegXnE
	B/ZdjBiKvWq6Fh9CjgVgl0t3SoJFlSCppuJYFIx+44KgWdCAp38s+JwrQhLf7F1xUbq
	uJ+W6CVmXdjzFia7K3CN4T+iel8oZNGCajb+LhM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644995185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ausxBPaFCVbdUDiwHvhV1sJcvEXUy6XGmveDaxQQcZ0=;
	b=PijmzNCtgv4g09IZ/zb74aGUHvJ4JOAqCYP7DHINVAXnKTECmCM9XhZneA5znPCF
	PdgtDHeBbTLxkbQmhqdtqsNywR9BzJv7x8Hgd64YjUDH+Aq8JQPa6JOAdPb0r0ijpP/
	EN/9kegEwi9B37PtSATq7DCumjibEKsGL24Yvp5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f015a8869-bc0943d2-aeec-4594-9434-9409de7958e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 129cba90cfe7b47ef3189272dd2242bad479ebe30e1f7590b2bcc7a1f5a90fd6
Date: Wed, 16 Feb 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644995184
