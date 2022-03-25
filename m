Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5127E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 17:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648230118;
	h=To:Subject:From:Message-Id:Date;
	bh=cCQ+1aUVE0n/+Xwn9T/4hTXKA2YC/xa+shWaCTu4Ne4=;
	b=XQo0DZWWfxU/dcT5iVCbbArEC5GPMRhkBSRMnfzkzfBew8BTAmLrhEvscY2ODi3S
	fGKfp4iTWsy72H+18R84nNd475b+Q+ux5HYm61nVQU3kiC3Y4fyU8d3zBPBkddru1tl
	GCOCeEO2+GqaRRFwua78rxKpU9pbcv2ieMsRrDuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648230118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cCQ+1aUVE0n/+Xwn9T/4hTXKA2YC/xa+shWaCTu4Ne4=;
	b=Zyyl971zr5tESnB2HiriPOELhgiXVzTeJ1Qu0iftRbZkNCrARYAmAeUQxecmcH0j
	bmAR9Juu0hN2z7uPPova2Ey6vRw8jdHcG7x63Ql/s6NWJBjFXNhecQRYAWq7Tl0IMCG
	fz6UKYWLWZ/UAnVryQ4i62bnEW/+a5zTCh1Jmnko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc22bb3bb-538c2a16-9740-41e0-bb8c-bc15ae7a14d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 052e9d2dfd79f5e9c12546ca190975882e4a3f3da926f02cd6afd550cca45c60
Date: Fri, 25 Mar 2022 17:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648230118
