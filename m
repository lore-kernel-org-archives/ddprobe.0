Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260A81854
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 01:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655254859;
	h=To:Subject:From:Message-Id:Date;
	bh=GStzcd033KENUKYpg7SNxQFGk1sltJAGxG43RbhIlm4=;
	b=J9ImwPWlrHWTdNvHjzP+kX+3+FF/L53UkMNPuS3mwLILrlE41QB/n2lBPM+s3HXo
	pn+EzbjV0uHLVWRRIOHvDxIDd+wM4tWApcCWK96rwsp9msqSDXYE1YiOID+V5N1199z
	AtzTRvAGNr43B5iY9cy5ynjDL5EiSt4no43NhV/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655254859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GStzcd033KENUKYpg7SNxQFGk1sltJAGxG43RbhIlm4=;
	b=gSvl9LTDlQNcj+mhTKABRFyCX0tq3ok+mKCouT2YRot/FCecnt1pDsiPozM8h9sl
	NM8coRr+4SE4EDB2ptgZBL1NweV1fi3Qhmstn10X2sOuXU9xaIJexE+kgPR7BswhS8K
	IMHW0U3e+DOrZp0yE7jiQR+sRfb6+oJ0+t+gK1tM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164e0be23-21928110-17fb-4dd0-a524-f38caaec86f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 975d9dea12313de79d3de2aa05813bfe671169e5f6645e55cd467ea8853d6a06
Date: Wed, 15 Jun 2022 01:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655254859
