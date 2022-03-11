Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEB033D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647008184;
	h=To:Subject:From:Message-Id:Date;
	bh=E2rETcmRvVAiYT3EFR15hCINSGxHL+FDq5CERKidrcg=;
	b=bFx9q5SkKqvrj+sVHtkZdfhdr+z1C6DaN6BUuuuBE6xLZtnyDnA11rC/s+SGCFRj
	GukChbIUKtn3UkzZjgyxmuFa2N8ljhdTmLGhEPNArRUoAv4dGWwuynbxSY/dqMRGebP
	txoP4SFiK4HRJQUutSroTr+ocAxiPjVyRhvLbqp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647008184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2rETcmRvVAiYT3EFR15hCINSGxHL+FDq5CERKidrcg=;
	b=lTsjsxGNQQQh5wMXXmldn2gQvPLIMJaNT3oXjt6M1NhLeaKKji7N8vpQNetoIbFL
	Vtna2Ds2z/gQRC2a7jzm1n0ByQkPMShMI7w8q4f2gHPeHwVpDv47ctrAhT90MZdjr1b
	dBT9p1s+mxMMc/wEdB9yH1jj0FgSCKV9ECUKkbd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79567997-16150066-2915-4a62-8d32-8b9a443c39c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfd7a58ddcd58bb4de7290b7bb0c67157fa77615c8f005ce8c2057c381c8d795
Date: Fri, 11 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647008184
