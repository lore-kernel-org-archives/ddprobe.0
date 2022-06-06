Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE137E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 07:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654501079;
	h=To:Subject:From:Message-Id:Date;
	bh=DEWyzKBGcpCFlsqziJ5X6ktsgpDh7CF6dM8ohil+Blo=;
	b=OWNvJy41muM+vTU/2MkVI4mJPMecCKCCBCGl/nwaRS6A5I4xVOvVMPpswwqshOOL
	1Kk8o/oMdx69m9V+YNaTEe8Ka0IvHntXb2VDVuVXAYaSVc7l9FdfYRfpKPZ4db7K8gp
	GF6hsuyrpBQQSOOw/2cUMqdC/JqlJef2U7ZC5D+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654501079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DEWyzKBGcpCFlsqziJ5X6ktsgpDh7CF6dM8ohil+Blo=;
	b=bmFVvhmrF9YOUz0sSQunAzeLo3mO0iZzS+0muBec1IpS61gCfAPYcJKt2OuKOfA4
	QB8UXwCTy16eASoiTxtuxGyxUDncF55R7j2LKp06xNuRllLFzGXaNINfLjtYvj+xa0y
	DIOgsLUCC/4eW6orxXNN2X0jolEqL83oUZfXoTpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137f2f8bc-189c60d3-78e9-4bf0-9076-c4c86c7197ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcb8f972aca641452a25c22080723c650cc374edce4f596b3a2acc337ddb709e
Date: Mon, 6 Jun 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654501079
