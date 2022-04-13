Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073D623DB
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 08:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649837818;
	h=To:Subject:From:Message-Id:Date;
	bh=sNS1vIVTm77HHVXlGerW3Xm1b5gGdyhE9yYNXfl6cT4=;
	b=EHbrZ4D4JhY5yi2ZPSH2/HZZCaOyB4jwqZA4GBKpbTKHcPmDYvhZ1TZoVknm5+OE
	JJbrR5NpKArzExNuiYeq2Ditro8pdT3RjZtr5TYCPsk1dXWqbUV3IY5hQZYDswPhjPK
	/TK5wqj+PXist9qoqJ6G9AmIW2MmgijEtDDdhvok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649837818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sNS1vIVTm77HHVXlGerW3Xm1b5gGdyhE9yYNXfl6cT4=;
	b=EuqVaRGBO3J9o/+DS2/qV+f8bMdYJV0BuqeH+/syUZt5+h5tS4DU8/qrWsW+XPfZ
	13XD4pvziZgeq6HaOWwdhdLfUf1ZtiJTutJNETwuntwWbctAn8JaaXAUI+f+mR8npbU
	W+mCNzSb7Y/FTu1yu6JMh+i1gUNLFY9P6HuDtqI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021ff4185-53696f62-38f4-4cee-b326-b959726ff200-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f6894eddf26816758c4ca0c17bad7090fce2d43538fe0b891a8d18ccace78e4
Date: Wed, 13 Apr 2022 08:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649837818
