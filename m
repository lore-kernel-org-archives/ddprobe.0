Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E46564F
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 02:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648692658;
	h=To:Subject:From:Message-Id:Date;
	bh=+gOq4OTwczYOJBB5ZVzek6TDpJe+6vWRZin/vMT3LSQ=;
	b=NtnpDXacXXjSXfat8+kMXRc24DjFnwf1FcGv3CJnyrJWv5SRohvA+kIRLu+OAjE2
	qIGwv9ozKtLpSEN1heqbT47v4JUKesjMNyBEc1nnuZYUyk4ixcyn58CbkMosV7S1GTL
	/JvIne8QqEYy16g/VFeRt6nM8B8NCG5s6eHdIHL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648692658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gOq4OTwczYOJBB5ZVzek6TDpJe+6vWRZin/vMT3LSQ=;
	b=aohjmh8+0bsPeshM3AjtjLwH6HLjFNDtmeyKltmczk4TZbprHGwb2OKn33J4ot+I
	svdYuUgqMmyrlFeCd8Bsu+RwPWwuDiiV3loKWQJRkfMOPDarn9atmgL2WHKlPXso1G2
	5Ulch0Glr7rlr5N11jKccuhSBcbOLRNieFDKMg3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fddbd807a-2f6f7fbf-84a0-4e92-9e8d-139acfe53367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72b0864dd14216a507bdd1eb3f1a08550e6d5ce3a8e82632b59e54416eb82c12
Date: Thu, 31 Mar 2022 02:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648692658
