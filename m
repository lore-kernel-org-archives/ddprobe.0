Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612857A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659856852;
	h=To:Subject:From:Message-Id:Date;
	bh=iEK5shVNXsENyAcpR/3IjWppIMkda9s2rD3BxP18hEk=;
	b=a/moIenKySRi76QVMql3Zk/xrg+B34bA1EeRIkQ1m63oeS3ybnqkfBSxc8pLMVs3
	0XUKClXbbnp7UjXBaZZPznymI3S/DQCi8F4IDTPz8KtQOX83XdmiGoUZ16dTl6gbryU
	yLF7QBnJZEZqNsYgzXLIzZtgtB4c2cATBdTkqjaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659856852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iEK5shVNXsENyAcpR/3IjWppIMkda9s2rD3BxP18hEk=;
	b=jH3pEWlI+rVytY0QlLORbGyrxZ318daGDWiqc8xEaQb2iix22DRKJqEelcM9XYJS
	tuK467MURRZvamOKPBjeqeLSXNaUi1FanJ9K2TxxZcquTHcOHfuZainFLwjYCBhWO48
	DLKoMBema1UMK2DTJNANcP4eLLIOStboDEizurSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182772d964d-f76a97ce-110b-4ef3-94b4-803f0aa10db0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9b2e38c05335b85f336f305defe178239cc6cb6437268653213bed8825f0135
Date: Sun, 7 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659856852
