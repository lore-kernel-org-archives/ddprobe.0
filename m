Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1239A7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 16:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649089978;
	h=To:Subject:From:Message-Id:Date;
	bh=p0cCwaJBV9r9vVe3ZWUd3rTqeek4scZ2PMoIclvrzSY=;
	b=j5YqL49lmX638fZ36/UNcwLEAsvdJaj0eXEycMPyznFbjTbC+D3+Cjss2pciGhrO
	ZflJehPcoJrrvid+F5FXmP5sr2yJslsITLTGQN+r+Ax7/mabIoGRk8w3n7Qxu74ihk5
	R+LUt4r1kTyBwHvHnZqoA3T2LGKu/PrUBm8wV7YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649089978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p0cCwaJBV9r9vVe3ZWUd3rTqeek4scZ2PMoIclvrzSY=;
	b=aACW7JstJvEO9I4gI6qdHHxnd3zyT8GtuIfP+OKZwAAHfNtc6ZkJWdlevkKNUX9I
	znPcvh9IcCLJOHmLTyJoHKVDTDE6F55mhjmha3fva404Ty1gCoiSzvEzqJhrAjlXOeQ
	PeDGdhJPjTfuIXZ3UIg7yEulX0Bzj4uk8ZuhcdyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff56c1f9a-75d7a455-c36b-418c-bbe6-c4ea3e340065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 890dc44abf65d5cc5d146113d498adfb804c8d1e750619ef31477d547b61a62b
Date: Mon, 4 Apr 2022 16:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649089978
