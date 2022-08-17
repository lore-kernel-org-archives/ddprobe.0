Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4381FA0
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660726852;
	h=To:Subject:From:Message-Id:Date;
	bh=l80cpQHsYSCs04iav6d1CDl9fvZYyqzyD0a30zHj+Bg=;
	b=R3hcZzD0bT6QwPQlZPjmHAcGTZj2TD8L1P2mtBpKLA7u3ZHA9L1ZTI3n+Ebs+D1N
	JCjEzJkB1oRrYISLv0k8Sg9JEZAXAAkP2n/pxkgmdd+ftZJuPDTtrAJD4QrjQ/sW+D+
	NVidsNM+HA6sk7mEcI/SOXw3vIZKIYQV2oZmVuuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660726852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l80cpQHsYSCs04iav6d1CDl9fvZYyqzyD0a30zHj+Bg=;
	b=dsuKuNS6p6LIBv2fWnZaPZLd1Ar7U63XkleXP7CRiKvhLWAlkHZAtc7Oee3uLT+9
	Pui/dCH8Ga37NbGbMLyEbImyQ6gbev8/V2rigCisQRv/Rjz3vfdm02fxBOkw/nQg20F
	k2KTc2deAMM9uCeZLfOFIGnHWXopO+mmllfYBWfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab08bbe4-1452db96-f562-41de-866c-d563e067065e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4298a62b056cc288a39ba4ad4abc0951ae4293482577b0fe226cc5f647567817
Date: Wed, 17 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660726852
