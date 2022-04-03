Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AAA1FC8
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 14:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648995778;
	h=To:Subject:From:Message-Id:Date;
	bh=1TkidzXG+eNPSKNVIr3a2mHZpZe8pOUD4IRDckya4KM=;
	b=H7sfh10CizBfGksStdCaOPyOfSsjsM22a2/nqOxPR1h9AksyLnLa4SynLOp1RwEE
	i9gFuy2O/zx+Q+n3jtbRiVoOZdhV5KWaUHchJsEXNRID5O88msSQDu+I15Wce+gYgXp
	BqNo1P91Yd6LvQx8od34DaujuvpE0Uwhyj0xoQqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648995778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1TkidzXG+eNPSKNVIr3a2mHZpZe8pOUD4IRDckya4KM=;
	b=k83NToSZvddS0IbeXyBRCS8stAsI7bNiQIpbvScvnucmHLHFXUI0l64MNz6cLdeM
	QA/iXovjOQ2OiRXFNyfkLsxYE0d6vdPBp2BMTFvDXrxqHIEwDZY+l4ojfvgNlTUbtwE
	rL5n/WVZC6uh2FN0arefFbX1WAnyrcb0QxD3cz94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fefcebeab-0e017649-5bc6-4453-bad9-71aa933edc27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e93e2a322afe5b3f7dbab300589a2a450aca868b52985031e7046366a8a00526
Date: Sun, 3 Apr 2022 14:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648995778
