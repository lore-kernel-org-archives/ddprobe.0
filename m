Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6277A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657312012;
	h=To:Subject:From:Message-Id:Date;
	bh=J+7h8RLClLBAOVfUzLX3cDJqrsRQgZdw1e3zR5xUVSA=;
	b=XCxDuLDHv4KQCg8tCnbXfNbZk+1aSmLGkneOitu83O+lsSn058/y1r9UbTA3EB/6
	9Aigu1oEkTZQb1Yx/Uox8y5PPZ7Rdj2cU1Ciz07lwIMNIgpNSLGaZouBjKq2npFW/8c
	c5+Cb9FNN3SqkibRYFh1OGVpMucjsW13EHflcGKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657312012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+7h8RLClLBAOVfUzLX3cDJqrsRQgZdw1e3zR5xUVSA=;
	b=LTIIcYJn8U1Qdqx0AtNF1pLVF54CPO9CdUjLYgpNDzKChG+grHJ3Rn90Ha20nC7c
	L7sZv7bdqheTljwhrLXLIZOSrXtcF/UyAasO08W2krWN7btqLExyY/uBWv4wM48KcmR
	+3hAJ+4jTbl5plqjI9XjIWPTxmtqBa3yygFcNd6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df7e680a-949d6b89-2b8d-469f-8df4-8fdc6aa9aa91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b82b113ba56f28080fd75f228578cec81e97af4193a7f1d157c151ff17454e29
Date: Fri, 8 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657312012
