Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747787E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646959884;
	h=To:Subject:From:Message-Id:Date;
	bh=CIEeAOUDJWaGmaEfbYL2GnSNQozem8xJcQcvokLNIjs=;
	b=fV35AatxpPq0QmQNdGBPviE2b2y11n4/Ne+Tg6jHQzy8QbkHuykkf5Qof3BgqNiB
	oN0GMPOEaDy5kKqYv2graYNNmaEE3ovjdHhxzyHzzvpyFJupl7xvY8bCD6vHNw41wp0
	/fQrnA1ubtczhr10KKaClBqAcM4sl76Z8RjNwMTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646959884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CIEeAOUDJWaGmaEfbYL2GnSNQozem8xJcQcvokLNIjs=;
	b=O+UyIMIbXft1V+HSlQRCvwfKjG4vGcdObgI78G2pL91fZgNzHkyI1C1W4HFJAbdW
	jFQvFg/sUGinPmzAUhhdBI9lf2Ic1jB1rJn6DMOy5RnnQ4TprzJrE0eYOTvh64hm+5J
	+7Ei8Bml5d/C6ndzOI9MuRK8pma3ZJ85XdpFod6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f767579b6-0ce47517-f3be-45ec-8bef-32d88347f580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4436de450eb2d0c356edd9164b58cd99501515b00829469770ef2efa165884a5
Date: Fri, 11 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646959884
