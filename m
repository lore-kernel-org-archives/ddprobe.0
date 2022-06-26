Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FAF12F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656266213;
	h=To:Subject:From:Message-Id:Date;
	bh=cYIY2ViLmZIO4PmIBf2aeAvjFKSp2ip8LSh/v1U+ZVA=;
	b=etmQ0gaYDjE0GrES19sCSpgkv74LGW8IxD2Y+w+AfMc8a/vX8Ful/+AdBuCCefkm
	SBoLzQ9E/uSCFI4I8t+mOii5jMHX2GCJTDYXDAQq/IFwzzl6oK/81poqmu7Ofl7Hq22
	1igPKVJenhUTrCSehscFXj4lBSXWNCfv7eBal+CU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656266213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYIY2ViLmZIO4PmIBf2aeAvjFKSp2ip8LSh/v1U+ZVA=;
	b=WwzxZiRnAX/NRfj/930qolRZ0+jfdTEGdUcUeYWZJwKXWco1ChjxOb/h/rKcJwYb
	z3TSbsN13xXCR530zVw5r9/DdGq8p417VQy2NfaJthxafRW4NjMlJ0izsIaH35onr/w
	snsdZVEsBYATt5wehlKnrMGi5KhLLfFHHTokRRAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a128c3a5-650d436d-e375-4634-a357-a0ed183e306b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ac4ffcd67131bc0f8380dc7fa4c4bd466e78ea875271636979a62a160ce922f
Date: Sun, 26 Jun 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656266212
