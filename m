Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556331852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 05:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652852039;
	h=To:Subject:From:Message-Id:Date;
	bh=sDXPlnvjERittnFLMMygAGk/hQYdHLq4h0U3k4ZG1aY=;
	b=jhAABQ31s4GQcd8A2nCnYB+DoacTWabuK/qMpPr5eIn0gNkdMxPL6V6aNDbFX0Ch
	nfMjtG8sg1vYAmM7UY0czQeoPsecpx0HlGOrkHiHtVGSfrYOhSUWJ+alCW6oq0a4d+X
	Efpq/BxYGY3NsNI1NPIzubMQ2fxtRMKENqb/GgQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652852039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sDXPlnvjERittnFLMMygAGk/hQYdHLq4h0U3k4ZG1aY=;
	b=NbWelfqqyOcVsP+xZqf8nT5w9DqX2QHhjyLHszo6XtkKVtoP388mbxH8RwQo6l7b
	3jVG6XpWTKYfHjX17P/k6vxjkApKIESpC/yE0m8p7oiX6zsuvPAMIsZ+nUNrDs/JPDi
	8pJkcPR97cxv+brvA+Mgqrdcv59mqFkcLF+pK9c4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5a89e9d-428a18ac-160b-4d67-a3b5-5075a999b8e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f056df2e0e57dad7b26575911ba1fd5e235af6956a87d16dd7c3cf721261e25b
Date: Wed, 18 May 2022 05:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652852039
