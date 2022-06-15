Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A597A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655291519;
	h=To:Subject:From:Message-Id:Date;
	bh=I5JJTmeJk3OGgOVno9rkjPfJxWoFgMMWwcNPPgPKtJw=;
	b=Dj4HURIrCSPx2/9hk4iz8ipoESQbjymy/Ds/PPLkYaqlJKslIkVSIKq7lywuP1Vr
	uUQo0T8CsNhnYVcRlF7OMpwYU/mUHLiFPK1S3c6+NsMGeNGkR40D9ZMd1rkBbXRsSJw
	Qzlun98ovQ4TLD1xr/8sjwopsw6t0jvS0gsAWHsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655291519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5JJTmeJk3OGgOVno9rkjPfJxWoFgMMWwcNPPgPKtJw=;
	b=dNbL47X+0sD6S7NDVPBGaNeDtwOfFRxzU/rvRV53QMlEdDeztAszIr6Tff6phwGK
	ndRJ3xhZjcPots4dcM+iMbaTTX9LJkhUCX7jqRUysaZHwAfjVXX/5YxkgmFbKBEUNwB
	nljxEvhAGNOzh+OeVoIfrPdgjiZ1n57hR5DdOZDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181671020e7-23380861-05e3-4c93-9ec3-738c7d6a2e26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddaabebcb4ec28694d2dd5f09f167f817a13c36e1ff8498691e73ac415571c92
Date: Wed, 15 Jun 2022 11:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655291519
