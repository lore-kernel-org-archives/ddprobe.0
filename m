Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6E110A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 08:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655885159;
	h=To:Subject:From:Message-Id:Date;
	bh=uYemRxyXDfHl6GamJMF1h2j8PCC1g9y1kdpFSzzTRnI=;
	b=eycB6i5VSB/Um221WfS/0sFESlVShgN9t6x4MvaDPIPcM/JcfGY5eZ+Qi2oKMIJe
	tE9o4tU/ygLt2kJtS6yl+hqAZaH09OkcEIOk6k+G7y5IfRChGRlv1DvfcMG9CJAB+SB
	zqddcGO+8Sh2vv6yzsoHY3gtgLYtxEZ1dHdzEEAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655885159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uYemRxyXDfHl6GamJMF1h2j8PCC1g9y1kdpFSzzTRnI=;
	b=LLpy1zhdQf2ex4IYEI1p2+Xt0wJHGbgsP7VW5crfAn8Ho5xaluHxup3gqvzgvKlj
	+ASA5hg80nEVGbvHiFsdrUUIXJUKzEkynCQTdS4RJiJZZkRFXscfayvp9VkyYoYnAm0
	CRRh8F2jxs1xRShxkBiwu10Vuf92lfGoKOOwkVdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a725b8a-7d60ffdc-e294-4851-8646-6e9561ba3dbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af98a6b431c3caf73704a785fb0b5c1a5ff8d849ed1aba7025b2ac2ccad585ad
Date: Wed, 22 Jun 2022 08:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655885159
