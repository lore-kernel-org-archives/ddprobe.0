Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6D215A6
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 05:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649914318;
	h=To:Subject:From:Message-Id:Date;
	bh=vFPsljghzE1jf8U1ailxhN+Wa4+0l0oIjBc16rEDcro=;
	b=BXQCmFVEJ97t57bh3sDhVxkp0z37WQShrkY+SNZZf1i1d1pgJ6ucla3yUDd1mVOP
	eLaBgdUFK1u5vrBPKDbqF5U3X27QI8Fp/1ekFTFaGJYkmB6JfHgoR4sN4IA0/ul98ko
	27GPVRgPqPVXCMnyIMMaA8If9mvNg2w0JvDX4Y0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649914318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vFPsljghzE1jf8U1ailxhN+Wa4+0l0oIjBc16rEDcro=;
	b=A6005+lvoCAcz1A+mrZ+nKMp9KLE35WfM0DuMwBlsOvBjtg1q391pxdi2cOtxOQM
	GdoSCptHKc8bMoSmhBm9MHwxNV8/04Dwz+D50GW7UxI4fnSwZjngzOHBGOMEijQiiCT
	NkTqtt3SNQT3UUFf329+kdsTXu84u2Ek70WGfq6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180268e8da4-37e4d797-c0d3-4644-8358-e4f9bfa604d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea15f9fe305f50bc88f24c076a4dec64cf0d4844ca1a42cfd33df535d4d3d7db
Date: Thu, 14 Apr 2022 05:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649914318
