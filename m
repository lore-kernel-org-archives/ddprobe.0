Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E0A2119
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 10:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653994499;
	h=To:Subject:From:Message-Id:Date;
	bh=McLBIwZj8mzQB/VjcmGHCyCe8FptjWfWFKecVh+flIM=;
	b=WHuaSx6jICnQffbmmKlWZhH1oZaWxcflHxO1LJLrsTNGLAUZzmpRLYWBb+Ngiz9K
	caWfZFCficnIDKx2IT5M6DH/Io4Rhg94gKml7kiMjFgoxq9p+NEkm0Dz+vBUul2d+Ld
	LKxfMx++HYI2v13zYVxwiSXpx5oQXzxcMvpkEIM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653994499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=McLBIwZj8mzQB/VjcmGHCyCe8FptjWfWFKecVh+flIM=;
	b=Q0JiqNmRgMIU8HaGsw/iCvM3vGlVogIJcaKgEBKKoWd3Ght8NLieXCcBg72ymWOy
	yvLrYQog4xaz6HRR4YSDJbBvQKTpF5kIMZPzUPwLkcrJjlcaFzfUUID1wx9Dj4FXIge
	Ah9UU08CNenc9IfhnRAFsrpiPJMDAi/amBiSmOe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119c12d54-5068047b-e2eb-415d-8f1f-f15e76eb872b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c1f66f93016971b1d7aed63dd6f1b204dc7f59ea60061105688ddf7a127dcd5
Date: Tue, 31 May 2022 10:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653994499
