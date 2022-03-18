Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4077A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647578484;
	h=To:Subject:From:Message-Id:Date;
	bh=+TiQx3nLqZ8tdFQDRQNrDwwNjtOdLwaYwdQ6uvKWmLE=;
	b=T2yo6juXTEu4x8TJCXWWcmzDEnFGv/+4IcaxcWPBqjw+vOjkVZWNLnurgqr38Y/2
	IzRc9ss7VXdJ+x27vU8mbNbGTnwNWRL3G3NCZ/FuRL7lUDX/D/BMv+zIlke1DvG9l1J
	HUiC4VU7AOu1INl9/mOuDQ1Jt47KA6lDv2InYdpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647578484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+TiQx3nLqZ8tdFQDRQNrDwwNjtOdLwaYwdQ6uvKWmLE=;
	b=SXrpy9tKcnh91pj1er2NaLTQJqgRkFB5B0Gr2fhG0VhobBYcBMHEjNPl25M94y7j
	agKnvLcsU3/auDkPFM3VKwndK90fJk8BHx64VvZr5dcFtCFp+l3XacokCjJMSXy7o35
	xpLUYsKeI4LFuMR2bfdSreMoYcEIjwbzhbmSfI8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b549042-85a09a31-6435-4523-8e9f-3549b98713cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e67a189c1f206161d91150dac071db66783bcefb8e73f869adb880555a64c1a9
Date: Fri, 18 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647578484
