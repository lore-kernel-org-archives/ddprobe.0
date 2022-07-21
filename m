Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4C523A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658373412;
	h=To:Subject:From:Message-Id:Date;
	bh=yc6pRwAo+Sdf8oLcK7OMyJGY32iurIBzME2sgU7LAmc=;
	b=NSdFe55GuWsz5i+blRBVsCoY/011IdQ6XxgTYdrkQ1TEYHW1M8Fu1CrjVzdAzyzk
	yWW+aFNdQjph/OHEoT0cI5QtUQ95kq6D1Dbz1hXaaRDDcC9bmSkcxltbfkqAcGPqCMe
	pb83F1iYivwkL/HeAHkV9WZLDH13tKZGCZHsT5vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658373412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yc6pRwAo+Sdf8oLcK7OMyJGY32iurIBzME2sgU7LAmc=;
	b=gjSBEAK/rhlxkpvHHlPkcAKsopoCTpYmJNLzNt9LFXEnbJHbybcZ6ebR2OjIxYam
	vuBRA0lvAjGZ+ddFuel4PnJqw4txSahdgzC7UasWgIRsFZcGs0CQyBt8MMQt4DN8F4V
	B6qe67W3muBcaMEe3UoU9QObTFk6JXL0crZX95IM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ec2158d-fe7be48a-5ca4-4aae-a306-ccdf2ce41f55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2630a2a32b6246bfda6aa94ab0b2f591b84e3a6ce68ca19a3ba8e53a9b99e4b2
Date: Thu, 21 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658373412
