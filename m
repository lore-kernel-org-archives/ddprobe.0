Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31FB363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 04:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650947278;
	h=To:Subject:From:Message-Id:Date;
	bh=bWG05DpGEQJ3vTPygCdFpA03n5wz5HOMbgZFsIOwFnU=;
	b=ifVXrFS2Jepy9pWPWb2Wy13HSD6yO1lMCOrXlADIDpPhDxUJA4STvW/MEkPP849S
	xmsASGYglwRwbCr77YfOSVo+UoGaD4UIv782QMDIEEks+jbByKGaimt4RW2wcG99PqP
	ZURziptnBq7GK3J1ZaH5gwu4C3EGJjz4k8OAyAME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650947278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bWG05DpGEQJ3vTPygCdFpA03n5wz5HOMbgZFsIOwFnU=;
	b=Hm4yttNFCtrdJ/yRkxPx1eTyZOUuaA6KsTq2BMQIIIyv8x0c0rZdX8S0HHcOJvku
	DZ497LN0hszo/ERICfRGYOL7mCb6233gLTWBvZTaCmW8RdEScjNupcAtRI5uOYCoHME
	YPEacz+QhbQ22hdkClOgCIs7D+PRxR/lgTjPpzA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180642045c0-ac1ee7a3-6a51-4d59-8a1f-1f9cd3c7871e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5739a04ae2471e41a108ea9770d1409c94a177a3eb203cebc6e1f99661845afd
Date: Tue, 26 Apr 2022 04:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650947278
