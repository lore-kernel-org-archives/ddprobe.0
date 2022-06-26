Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D343236
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656286612;
	h=To:Subject:From:Message-Id:Date;
	bh=1ZoJ8Vqaz1qSXFOXNsDvDdMeMG4LxiRMj35H1nUqamE=;
	b=Ik3AYqd7EAgXMITyArkez78McBBXLDndDdYc7WP30Uhe/AeLmYi2dqODINuQk8aJ
	/G4/iUo/Eu/WoOPETs5ayGjvJtQdU7nm0eTN/pSZvDWNQLwSYBXmVnf3E+StoIXNO5X
	ZJfYAamMLkyTKGmR7fgDvRMLTmrvAih0ZA3S2DH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656286612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ZoJ8Vqaz1qSXFOXNsDvDdMeMG4LxiRMj35H1nUqamE=;
	b=Y4egSoEbbKPcqn9SXEhMbdGTRf2Ev4sObjRwJ3ZjkhDO1aHG+3ogqqkTVfMLyW5D
	KbmvVXlBeIgc+YyIZeu2I+FowgKMl/6M6uBa2FL8q+BWHl/eZ3S3T44ctP6mLp8+1sF
	UDRIrQxOBzE+cBMatVIVftqO2S2Y9AqQr84v0ftM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2600b6c-39b50ecc-ffa4-4409-9004-99a91181d225-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24190b33650f668e2c7dc040df2474aec960ea050b42f4aaf5ac28f0c0a15d71
Date: Sun, 26 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656286612
