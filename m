Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7DF46A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 06:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651298998;
	h=To:Subject:From:Message-Id:Date;
	bh=r/OaA1WWLsDP483mZVUe3ljbSOrlDojQ07KvBTCIfGY=;
	b=A60wPgvlqrzgfUKjhut/TUlmFiaPWbtjWe/4p3qiyeQAwW1ynmqcglLQ8H3PVB4Y
	6rH04Hzt6vqf4y1+jNJcMAej4Gx+vBDFyLrpCmTcZGRM4Tx53G0JkYtmLwEz+isJl/Z
	GTKELF6tnGojr+pm5TMzXgbFr9LFumi3z6hBhwG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651298998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r/OaA1WWLsDP483mZVUe3ljbSOrlDojQ07KvBTCIfGY=;
	b=BiXHd2OKCI5rJDCdfHledh0JNYQ/xVE2yOuArpz4S3eF0531hb3GTnYwesBBon6n
	24Eo1PtpHfNIyCrpjVUpGtSO/buWyzf9T7k0IBKAZwfV2ciqAKaQl/nrBL12Hd/9gVV
	aMNmMfdzelKVn/KCtspKp18SDnkQ57h5z8FzGIKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079171820-1b91484c-058c-4ab8-b63c-988456fdebe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ed137ed0e5636434c8e0c0a948edc4246daa2a7b439cd05c2dc041cc463edb6
Date: Sat, 30 Apr 2022 06:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651298998
