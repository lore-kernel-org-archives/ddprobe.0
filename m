Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B141029A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645452685;
	h=To:Subject:From:Message-Id:Date;
	bh=PQ/meb2JhFn1B9/dc27fOFRtQGz2vTaUPJ+Ewm4WM/A=;
	b=daCMSV+rArOeTrtCaBpXMDNyBeLEci9uOBh2zzOP5/9cDGwyAYTAYKgR/N4gR/kB
	68LX7DjFdQf/hcGHoT4s6YGGM7G/P3CyF3Rv2XZUl5fLUafEStIxUZwxAY8LE61hoWm
	8dBcRPHe43BQhG6N7o2XOlg9c+0Qgx9pvQJhcOU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645452685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PQ/meb2JhFn1B9/dc27fOFRtQGz2vTaUPJ+Ewm4WM/A=;
	b=d/3ABnUSSa5U/YZa+moCOtwU0aSEcdWieMOV8ojo+R9Zb9x95Oj8aLoxss14dEkm
	HXFI7EKlOdDdZbZfe9VC9sPaWI4lWG38mdixTKEPGLggHwTmFBi3Gl2hMMMOCe+3Cru
	NjE+a/xk8jBC/G4dWOMS0d/3mIRSyQmezp0mJ6eE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c9f6e1c-a4521c23-2fe9-45cb-8350-2fbb1ef6b776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f72cf65e1417d7ed2cce0c4b8c0ca72be0770a8baf4ad59ca30735c2998d829e
Date: Mon, 21 Feb 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645452684
