Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897C77A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 04:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650603358;
	h=To:Subject:From:Message-Id:Date;
	bh=9Wj4X8hIeFPeoYMYLRWTomLzlTiJYxs7AsaE0T1Thfs=;
	b=Vh3QHyRM6+u0lDcor6S4ItHJqO+xpLuMvgHM7hlqeAr39Fdx31FxP8CcAwNORSF7
	3v9gr14kRE5bYvhef8aRYIiYr+nqBtb38DOFVDmWwokBvl5r7a4aVlZppEtPQHreFQ6
	alJQHetBTXRHpDHa3LXJsTGp5CunMOcKWhwUpFJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650603358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Wj4X8hIeFPeoYMYLRWTomLzlTiJYxs7AsaE0T1Thfs=;
	b=MB8yQw68IQuIOpJZlnFMU5Vt+Enin7t2PZPRcAGCxdsnNPEcixXfdl2Q/QCbq752
	68L57cMTPbRvq/YhxZmS3+9+cxvLZ1DSjYF4DHmOz8KXYohp+WiAth4ziuA/ZpBQmzx
	sDoWnbTfY8sQmrph35UStVVmoe+FaftmPdVLAIr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804fa0781f-c0ae816e-1f41-422d-a933-c59da8a02394-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32b3dbefc395568204bb6640783fb935cab9876e315956e151280853d6214c61
Date: Fri, 22 Apr 2022 04:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650603358
