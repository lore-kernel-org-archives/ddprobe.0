Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FBA539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 10:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647684085;
	h=To:Subject:From:Message-Id:Date;
	bh=WMUseSntJhMXEBeQrA/YuNDMmcq1id6Y700Esl2/mcE=;
	b=JeeFOvyjDvh+FszLpINd5MYVXpU4E1VHUPEdkgD/msL7FqcgUFVGNeXkUWEZaErr
	+KfOj/Gd0S2dQRhMwi7cK7QQJ9wxgT1ilQmMVQTYxFVyin7E1O3yIrl4kVn9DY9wm5o
	qK0EAwIG/A+57+ohSH5aaCE4yHE3NBOPNATvuiIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647684085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WMUseSntJhMXEBeQrA/YuNDMmcq1id6Y700Esl2/mcE=;
	b=Ytwl8m/gJZcZdBDO3sWXlAUmNhmDFjrptf7AfTOVG+D14ikBgGLQ/w7KJmwuLl7B
	Wlk4OZWN1D9llXcysjtPG0/JkoRlD2q6CqlCIsXBN1wOSmsMKtPKkOnlCXmbPOmFoSz
	Fu+22ayMlgfVsxoeHHKp8QwGx143vzOXx4J+6GrA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa19fe3ef-aec261d3-3ace-45d0-957e-57a0b0ed70d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 920b6d74b70dfe4e6c05a8b543402d1d54433c888d6b05547d2c4ff3b0711645
Date: Sat, 19 Mar 2022 10:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647684084
