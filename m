Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779B16134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647112586;
	h=To:Subject:From:Message-Id:Date;
	bh=aZ10KoGQfP++s2zLLdJ4XuTUOH/Fs84HFBzQS9GEas0=;
	b=Z3WNvFvffGlUAB76JuK4JokBHZmsoKKQCcR1pKxtlrmQGOgFsLChu827NdP28nYp
	oxhJuHpq3Em6IRhwGOj6w/unAHIk2fcsLUGmjorF95bIyQbwLQOZo/JImlAC1bwrrdb
	JfqYk8QnaNBN0ehSAe5rsa5mLbSzY5WstRSLTIDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647112586;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aZ10KoGQfP++s2zLLdJ4XuTUOH/Fs84HFBzQS9GEas0=;
	b=fDKiqn8tlZUqNNsxoUQ75behTxn6rsOdLn1xe4ztzsDZdagn+dofiljdbF7/eepp
	3CaQvnpBRt6tO6GleUgH/frD/8RAxfU9iKsIfGQyrRrd1euQbmpApdaDbhs+Jbubixb
	1sVwupkbAcVej3N4b6M0Aq+YESRVqbWWaxzJFQss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f8f7e46-2da68f8b-e7f8-4656-8a2f-ccde79b894bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a4355bd25d68c59255a0443def16d9b68115214e7b458d6bcf73bcd9cceba88
Date: Sat, 12 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647112584
