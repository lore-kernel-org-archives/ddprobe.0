Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1C07A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 00:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654909019;
	h=To:Subject:From:Message-Id:Date;
	bh=wLcmixG+6bNUtcL5thOpgb8K96IiSiv+rcTm/JCaCmU=;
	b=DVu38ah4kGYRkfTfq2rP0DmkCZX9vLsNIcUwg8hfwx5QSYW3+sw1hJ4yWIDxgk0G
	XYI2YCOnqKLEZEjFfO+LrkPmih32YtPNPyvrjf6x7eVevtXsw0Aefng3yINZrDTSp1l
	AwLHhJmuPIN8StjO3u6Nmxz5VikVSmbq4Kb/IcLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654909019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wLcmixG+6bNUtcL5thOpgb8K96IiSiv+rcTm/JCaCmU=;
	b=iB+OL/hnZgNUQj8ORilGZ8VPpxDKq+lmWgwxQ1lAa/CLuxWHLBSuS/N8A7IgzWNh
	qX291jC3Sk6igemWdeJLzAAAk4uFNTrtiY+2S8WZiNSYCbXS+23xjygbAMdR+2FFd2p
	H0uxvk/Vndhf+JsUP6hm5WnNEuE3unGcIq1ePong=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815043a46a-1295174b-19cf-4b7a-9244-fb4f8799fe2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aba22e48a41f76335ebdb0c5dca82576470320492ad093cd76d992ea1ca424bf
Date: Sat, 11 Jun 2022 00:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654909018
