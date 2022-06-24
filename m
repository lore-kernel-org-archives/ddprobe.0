Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B5223A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656046012;
	h=To:Subject:From:Message-Id:Date;
	bh=YdrNeVDAmmrnNAD+85hzhn23WFAY6iEJBTly2uippLg=;
	b=hR73kysPNLRNWDeKUrWDroPXmVbQ66fsymHSfwA23C+EQ+WHOx0BvXloYze6CO3J
	wWTt3N+79AZSPZKYBpaymuqI0MByOS97bxyzSqUNRU+p4Cmtc9ltkJgdfosH6S7YBsp
	P5XmmJ7K6a7aYEv+GFXPg/LdlyWvFsXsMLGograQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656046012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdrNeVDAmmrnNAD+85hzhn23WFAY6iEJBTly2uippLg=;
	b=ImjCzOQVsL6U4fEKEfhmtb2ZNR/F34MskAUssLQCZM04gl8mMU1QSAvwiZUjTUXW
	WkQDXZueK+WLawbEcNNWwYD8gLE4MDRhL1SbWEm3oMUFdVvDddkUXm/BNSg/kXZkYCn
	tPYhZlVNcs3/ieAWaktEEd8fQyxfSpThwvQX+KvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819408c78f-98a6cae5-023b-4713-816e-c5525dfb2d03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff6e3fa62a5a23acd1ad040415959b86d62ca957138ce9270d71d69ed31bc2b4
Date: Fri, 24 Jun 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656046012
