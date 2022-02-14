Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F161A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867395;
	h=To:Subject:From:Message-Id:Date;
	bh=67JupB3K4iQxpUBCXQ1JAPct1BWI5kaeG9jTpOAc+wk=;
	b=ahZ/bjBwBWID+2+PDWLhRtviS3kndw+i+jSV4EQCkzYs5GvjSZ+XpnSpNjHdXXgJ
	iKQrFLVT6sKxBhouJMzESrw3FlJSoY59iTtGllJvDSIvdK0ZAQlieMJwyQWJCCpw8g2
	jG7atAzS15cNmRUXbb3y2fH/sZeQnDmeC9NqpvG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867395;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=67JupB3K4iQxpUBCXQ1JAPct1BWI5kaeG9jTpOAc+wk=;
	b=dupT+S3fGFPmggKquBGxDM7SsdbVulQxDOmiCRKpBXiHAOONH1kqhbqSAMklVeVA
	CayhV/MyGvvnNKCR7mEJQ/CJBQ3M+T9t9XYFk59yFk2vqtnwmsHBZNwV9uuMBOO22xc
	Yw2bjTDGRQJ3CWZ7w+jxWLsQZ7AAmcZDe6RZPH78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bc9c79-b880ffbc-1a55-4a70-a368-4bfcac3f4f9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc9e29561cb26d4118893c9d3ef4c2c86296bd9d25a47d17ed345e9bf8c48b0
Date: Mon, 14 Feb 2022 19:36:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867394
