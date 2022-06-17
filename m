Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C9A3201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 14:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655477879;
	h=To:Subject:From:Message-Id:Date;
	bh=bG+768CPutYC4wZ/1xGJahkFZynlhIOKRJV+UiyX2Rw=;
	b=ZrWO/uLCV88Trx6j/tSeL3K8c4n7ZDmZ3pbxK7BWXZ52hXW8hDfWQ62gDVtLXB82
	Ia+xpDrr+hZSyVHZXZxD+OJC+Yz1ag4ikZGjD7Gq8aoIkqG2FwYs3XcU/a9sTtgIQnq
	ouVCI/VJ3tJzbrcLwZN3bHSA4mKWqtuv9q6tFYSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655477879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bG+768CPutYC4wZ/1xGJahkFZynlhIOKRJV+UiyX2Rw=;
	b=eOX1X7rluQD8bt/MrTIpYBtH5K03yRR17wGp1woWUZbFx1bw6S/ocLrSMSN1Yg+r
	bWzdzhD8VggLvmY269APOkdpPOTZyXdGY5uwInYyw1UxDqeyin7k5ay2DqVwe1oMifh
	ZlDRWRRVI2QbZToXTM9WUq1hq2GqTQ5o93jbOq9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181722bc1dc-26069ff2-d92f-4465-811a-f42e5fb12092-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c38250074079a1c5aa5d2f047df7768cd59803cc221b292ece3b35dad05682ff
Date: Fri, 17 Jun 2022 14:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655477879
