Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2953D20E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 10:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648549258;
	h=To:Subject:From:Message-Id:Date;
	bh=KsT0/snhWBSc7wbcRSOSMqojBBi79WSF/NN2kXXgECI=;
	b=hDDlMO53X9QC5vs6HqsM2XS31uo3lFsyD5CureZ5ZRhB2yl8HL4Ekup6i1hjrnQZ
	dpjSyi9wn6QKj0Nft1iljNbgnKBkme8cSdEOvv3riucEQy/S/Iob6orX02UBRB17vna
	k8s9MN4Izkicm0uaZuoer42ERjj3lKUKwInRWzik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648549258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KsT0/snhWBSc7wbcRSOSMqojBBi79WSF/NN2kXXgECI=;
	b=YUZ8/27sXRJ18W1A48jR+EZYbKwjwyRv78nllAWBP2tgxeBt52b5vFPkFPF4lQb6
	mqBraS5cVKV7mpyiRfDrQU5tPC9MsMwQPOI0spq/liYvfeJFnieNDZ5sYecxhMd8Yuw
	tgde9fx4EajBm1u2+2LSW6XuPkN2qg4whSAnxRY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd5316405-48d18a3c-31b5-4ccd-8c36-040dd9f309bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90c42a8c207ff599cac297570f2f63b17e08f7c0e8c4f0dbcc855b9f601c35f1
Date: Tue, 29 Mar 2022 10:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648549258
