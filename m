Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CE31FB8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659147052;
	h=To:Subject:From:Message-Id:Date;
	bh=mDI+baEZQAuzFzZGmqBp3d8pVAOnn2uHofgCphFiFr8=;
	b=lmZLZscbfKAC+YmQ3oF1d311KYsVj+Rl5laj0pg8e9pTOcqdlulxZeVGExPeiEhN
	U+8slpXV9wUJqyMioXrsjSe1yHDcd2jD/qN1FuXekFaIZWLOSrFqpRNw9N1Akpe2H4U
	1GbiAgFwfSRRGN4BvZACRc59L4DZ0iNCbSBvjDiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659147052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mDI+baEZQAuzFzZGmqBp3d8pVAOnn2uHofgCphFiFr8=;
	b=Q2Eh8mKlvax/1+H2o+0iAMwvv02PVU1BURi+QEnqMKImJi6D1JpG7BUBMga1Qs+o
	LTTZy6ojiTc55c7GaRTW7GBFDQyvuV2bAGYk3vF/L4pCo2mSf6scqaGMO8jrkS4OkVo
	+LlIDH8QSjIWKXgB/FHS0hxSJuKF4VpGzvcdgczw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824cdee632-69de7e0d-6002-4f71-a17a-3f36084237bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37e4c1155d7fb2e681c960f91de03dcfef830520e529c94962185be78007188e
Date: Sat, 30 Jul 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659147052
