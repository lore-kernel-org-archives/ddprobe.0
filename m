Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9691453BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645285285;
	h=To:Subject:From:Message-Id:Date;
	bh=MXx5NYpXl44lvf/e+Os7ZI9q6iCx9Ntxcytql5TLgDo=;
	b=Ho15spSAGjU8ymcGj689vzL+DRXiU0Qip42UZO25eoaWeU41dKIHsrU3fMkvZCI4
	5vZFPK/uvC09E0Vd9HVSO3/g+kfoGE+rcVDTJO7IfRYHokP7yPyimBhJC7BCpX6Z1qP
	iGPjsqVkn3qhw36UUmlR/Z+mUIgCcgeYFRSegh98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645285285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MXx5NYpXl44lvf/e+Os7ZI9q6iCx9Ntxcytql5TLgDo=;
	b=XFBI28l/fWjOrcVy0Ts5WXbbxWnb5fRcmffc52420fnE6VVLKT73C04+C5JPl3IJ
	1/HQOR4sCb18yDN5mnHaMmlfZUweiNq6zGmWFUSMqKdZBj+pm/ra9FDysLw9Gq4W57t
	MIZJOWI3YADR711dmeMIGlaCNMgEFGAxIJq907Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12a51bf4-6e3070b4-2c5f-4243-8c9a-114f28c78db2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a521da413922fbe622f46c91176ace0152407b7ef46b9dc5dd86d59e66dab691
Date: Sat, 19 Feb 2022 15:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645285284
