Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7647C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657134412;
	h=To:Subject:From:Message-Id:Date;
	bh=gA0wqtNkWq19567/63itV9mq92+2l6vT2SQ/fu5uSvQ=;
	b=aJJKzJYW57Qot26NglZpEuFSTPUL7fpNw08sbYHXfkR9LjO8yp6Q2/FGOIQrSXDl
	k9viNFoXHvF+8FBmfZaiMIzZmWGRE9wI0n820VXAVg/D+Rf+StPqBA1KujxF7Igwutn
	M+aFlIIzyvuGr9mPh6gDEP9sclIC4JXUPC98NIx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657134412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gA0wqtNkWq19567/63itV9mq92+2l6vT2SQ/fu5uSvQ=;
	b=LtSpXUG+mU5QspRywDiSWk8UHPIklGeQxyr6en/FwyE4vVAYdNIerp4H/XBuUUjr
	KWQOOB+ydm3NrcJgiNYycF9Ud+mxIGqQydkuAwwHEN5FmK9O57BhbamlrsauPi5spV8
	EpSIyEMYpubJ861L05pBlEatiu/9sys2sRa0//sQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4e87200-4819be6a-3224-434b-98fc-4ab580eaf50c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 878231029c2f713176193e1a9ae2042b2009ef32704634e517e105257f35f05c
Date: Wed, 6 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657134412
