Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B337C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 03:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650769918;
	h=To:Subject:From:Message-Id:Date;
	bh=9PkGq6ySRC9gH7rD5PhTFpxL0COtM1uvJ4yoL93VCt4=;
	b=G0SdQqgTpV5zRL2YhxNQgmCJujjNMUfs/nv03mr5CO9+nM2do+H74OjLj6Igckic
	GbfQuB6XyJFMYdsmtcNI+ku39KGI47+sHuvE52kDSVAGGbeqVLlj7NdwBWu/wJssWIS
	uIIP8x7drJsJ31py+JWAUFYyckw1QuacmfDgEVUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650769918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9PkGq6ySRC9gH7rD5PhTFpxL0COtM1uvJ4yoL93VCt4=;
	b=YIakD/hWmrJjSjRZZsfkInbY8ce2q6aBtsHEwyZVqaZwRrqNnA9SvodIIvrcN1Oy
	kTNOZsb9/2bISNQ+IZ6twdXXbnzSB0hTAv8dxrmTGddoSJdbCZCpBntDFak47V8KBdy
	Ynu21IfBnLaa6/QFap3VFYa/tVU5A671yzeRuQmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180598df97d-77dffba4-1242-4592-b8a3-b5361913fef5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86b3a0d796095dbc5f95f034ae080b167faeaa531321cf5625147eb2c6fb4dc6
Date: Sun, 24 Apr 2022 03:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650769918
