Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83EA2F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 15:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650814558;
	h=To:Subject:From:Message-Id:Date;
	bh=QMlQsPOs1wxd1kM1XqTuyuBTs8PHmpz/wrItmFwkPG8=;
	b=kMK3oR2QzZPE7GL1FcR8ur5Ee87OmolfKK7R1aR3ya0wGtmRgWnuWu9vNo/GeBNj
	O+sDQlQRbXmbiOqN9WX4cs85eERkAvvps2cwDv1uPCU3A+JAwMLx9BRFSXUpdo6wJJm
	DzBlv4ucOIYMjuFxkWoW6d2WguQZ6lTQ8P0K3ruo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650814558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMlQsPOs1wxd1kM1XqTuyuBTs8PHmpz/wrItmFwkPG8=;
	b=RHOY8JX9zInpt5Z9iVi68D5D4ACE44evgmuZ6A8SVDX0dDyoD1A8fMGSBYbkqfXT
	NninRMUFl6wMZQ73NuMtmP98bp2mZgQA22vgYPhmCYZ7HxkjSHntcOrbodTi17SaslP
	UK59QGC7RdCBtAvPdn1A9pxNwpq/BZ1z68tMahXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c372003-500d9e1f-cbb8-4715-8e66-d568c80d64d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af069cf3b3eeb1a5623801e7e612674eedcc8ca41f7a96a2e7fc22d59f1b6cfd
Date: Sun, 24 Apr 2022 15:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650814558
