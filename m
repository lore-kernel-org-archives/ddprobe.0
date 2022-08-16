Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781FA1867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660622452;
	h=To:Subject:From:Message-Id:Date;
	bh=ekSYjfMKK71/+9zkLSmtpNIxtT2Xa1dC24XLBK/AqJQ=;
	b=ThmEjPurcwAw30TDPe6UTWTxE9Wqp7dl295sCGenk8f8vlHZrGmaXP7keNk7H/bq
	I09OttJ86HdGGemndq9z8pqABUj99RVt8H7FbpX+qpWZnw/Q6UzyNPfkZsAfWlKETJH
	+vCPnPE36B50R18JTr74CJjAiebuyRmQPLCC8BRU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660622452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ekSYjfMKK71/+9zkLSmtpNIxtT2Xa1dC24XLBK/AqJQ=;
	b=LoRSrKBXJumyZcX3+3R5ipsHccejf7SNiF4jQ4lD7mcZkuBC07yPK/WSz6OyaQHO
	dwLM4OAPaf8f99TdvslVLS/FwSJtFaOCdjWMdMbyTuh9x9WudkXQBDY+1zSqZkuRY0B
	ptE6INBVUMHVXulaFDYuvzwzQ1VonoUyxoMoP7xM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4cfb774-c5a8f84f-d91b-4d73-8323-612d741773a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23e651d9716e41e75996d01504ff8e864bf8c631f1d3c47fefbce16e06a01cde
Date: Tue, 16 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660622452
