Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1A14A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645984885;
	h=To:Subject:From:Message-Id:Date;
	bh=m6oIUqPK5QFui/8gURndLXhPL4/LmomDcSz1tGEmnfQ=;
	b=TR6bVeo2tON8DzWZXWqH4bjRzKqdYhM2LRRhYJmkhjE6eGDX3Fqa2lIAKCGBEgao
	rzvoqy/kBvriXiuyAEEfOXbeWpIdt3U29NPeX1Am7/ZHyd9+fIucPjbNRbnwThXz/VT
	HQco7plB1CM1Eq2puA9SorjBXPEAHavWOPK2yfSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645984885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m6oIUqPK5QFui/8gURndLXhPL4/LmomDcSz1tGEmnfQ=;
	b=X8RP3KRum9VPVJAUT47vTj/PpDzzmZWu93T5JZB8BbCEyIcaAsn1ipAWyX9iyZSc
	MAwa3EwGT4MCbDWmtR8jqlckqYJcfiUOKnrC+ias8CDjM3lgmMdcs9jvOtF4kd2RmYf
	ATZeE2ktiYy8X69Nnm+PRE/6fyncy2Lph0h/wJV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c582810-f57b7115-5e78-4dc7-9fde-48b58206c7a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 969f44d11e823ed58b5176aab7e7c836744c390a49d4f5a3ed647aef121f89a6
Date: Sun, 27 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645984884
