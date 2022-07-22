Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC7F15A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658496412;
	h=To:Subject:From:Message-Id:Date;
	bh=p/mDd6sL1Rm2G7O5FCTEgeAtzAeOtHdzcq8n2n031n4=;
	b=LT9pTvcMn7AjAxwiAUN9cBldTHnssAlUBBkNYxyF5X+zEch33qeWLQYiyvAQ1pSl
	oC+CiqaamoW+ABCjPheuCz8qxd8dunei+vXWfrLjj5om3XGkKgXoIsfoNSKdZSJEwDL
	O1rIzCf2CgwJrBX6k70ybmcC+leQnVw/lYVcpmjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658496412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p/mDd6sL1Rm2G7O5FCTEgeAtzAeOtHdzcq8n2n031n4=;
	b=Gk+Zla8cuj4U+EbmDCuPeLuu8FsIoQ2H2mQv0/UkfkM54W2we1Or5mze/aW4S4gZ
	1Eq+QtDP6lShY7P/IuJciAV3MSvgn26LbNJUqdedejYYL20cfDxhPP3I7zREGOuGLMb
	nfNooluM65aURXRWFrx6tMPObxu1GFBmSulPaNME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822616ea74-82841a7f-19a7-4cb4-8574-0e636c0a9712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 556d1af9b5c6ee97918cc897ac6559fab880d4abc1eaf76fcc0d0c4a877eb5f9
Date: Fri, 22 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658496412
