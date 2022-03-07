Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C308367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646624184;
	h=To:Subject:From:Message-Id:Date;
	bh=C/J/ilg73Jixca1H3OLzZ1lnA2ITZa86DUEU/yhTgek=;
	b=C+e/UkBSV7Mbii+TvGTejklmtXr7sv8d58SYjLvMAaWxK8fKyN9/6cURZJ6yh0Da
	yQb9EY+lIAmlynfQ1vxyD3arlXB0QGBCg4fXm9t4plOg/diNVr7UUrQRwb/XtSKmo8F
	uQrdttECfX1ac/ABlfh+bBph2nShz1Fzyd6oYVt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646624184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/J/ilg73Jixca1H3OLzZ1lnA2ITZa86DUEU/yhTgek=;
	b=YdQQIapj81ubhyIjJMfduC2wGcHE/9Hm9D1DCtsXMemt+arXOto8BNzDlhC3gqTH
	PxzAPnRuNLhCWFFAbb3I/euxIVM9xqiKqSMXMimKWMxvVgG7YrAPfATQIM5aAjET/h+
	pcwozYDLSUs1iIeaO5cJLNbnqFQrGU1g4rsVzP7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f627319a2-7ed8c0e8-0c24-4ea4-94be-fd95b284f4f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3a95a3fcc54b2ba9ed18b3385e4d6bf97a7d32d11debe259d955b9f87be05da
Date: Mon, 7 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646624184
