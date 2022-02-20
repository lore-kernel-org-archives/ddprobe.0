Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAAC6130
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645396585;
	h=To:Subject:From:Message-Id:Date;
	bh=tJl80AX4VM5897aSjfV2ELo1KT1l99lX0qkDa66Fi6Y=;
	b=hvWNg/UHrVjcL4bEtw2UnzlpmG5bhsYF3fnrQCpE4+RF1e6ma+wkpsMeAFuF1ECx
	rlR/8wbTvwHQIpu912eV7HImuzEQS2dAG79wA/OOf33sJgsmxPl0GD7dssn8cEvJ2js
	hyMvl7npB/4dKZi0VXEIG6IuHvRutpl+ikrE2mT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645396585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tJl80AX4VM5897aSjfV2ELo1KT1l99lX0qkDa66Fi6Y=;
	b=Wm5WHPXJmfUS791ZU3DocsLUuIsRPgC7PpSoyjIk8z8hhujfXDXS0HobHCNkPjfT
	684fltAI8eMPdYusgdsfM1devbfGycgWnGWhf9Xu1TL+l3kt1CbLUcHsp+wwKj7JjH8
	IekI/P1A44Unu3LhLx30wHT1kOD64KW4XkWGFq1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1947693c-ce983108-241d-472a-83de-fbbd9e68be1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ff47b7be4ae89442d9e26dd047c1f2894fcb09700128ab5c7777f555123358d
Date: Sun, 20 Feb 2022 22:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645396584
