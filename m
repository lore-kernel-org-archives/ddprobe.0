Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016381365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 09:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651224478;
	h=To:Subject:From:Message-Id:Date;
	bh=uDNXfYHitgGJP6cK6dypwRWVayJV8QThEI+nCkmk+0g=;
	b=AJNu6NfpjrDU2gSqr5oo6RQC78NbqNz13knunmx59LEGawV7eAyxIj/zpX8zFwNL
	F2PKxW9pAOQPp7csctqgNYYFi+zRUQmSofgAPVPRO/ZjlOdbBJLUpCLXUYRqILgdKGZ
	0aJ2TUVUTVqJpzXYcyTQFYZmU4raigLhvY/PMRjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651224478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uDNXfYHitgGJP6cK6dypwRWVayJV8QThEI+nCkmk+0g=;
	b=RcrnyS4jlxqimPczIr+k1w1pU9YVCKlGX17sPQ6siMIXnY59yvPmLwbvlNabRvTT
	mAZ6w6cTlCgVb1HF8utSIRkPKIGHqvS2WdD2ZzD778gM05Ny/OLDJS/z0UtnvF3COEl
	NxigtkCPM8n4g/thAlhlkDGrFUYTMgYOgFK+P22A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074a60256-526dc16a-26af-49fc-80b6-8a0679f89600-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec959690835339eaae3f32412dea4c6639326c563bade22bf3e843bee24fe41b
Date: Fri, 29 Apr 2022 09:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651224478
