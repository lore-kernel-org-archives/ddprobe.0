Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E141B60
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645821985;
	h=To:Subject:From:Message-Id:Date;
	bh=5aA2ZYb0cpTpUn9a/x+DycRogH7Z9x+S4U8wLtJigzY=;
	b=SpabBrsS/7rUmDSmINgp3Oaz04So2sTapRii58x+2JmgfXJrIzmmRl92MGUTADHd
	5M5IhtgxKshTVJrRGPsQcakTFFGI1yyMs9d7xyl+OWWSeUML+jf1+4En75hhtdNYCR5
	vd4uM8RFWZzSxP4arYIKT6Q1mGue71QJebe2bL+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645821985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5aA2ZYb0cpTpUn9a/x+DycRogH7Z9x+S4U8wLtJigzY=;
	b=XJYBOm++Ln3VthkgvBG4QpLPlg+wAqB3J1AD28mvMFGDx2eDC7slnq7+cNoDi7Mx
	UyAxE4719UHTZVmq2GUnSjVNUygxTlIZsvUvB7G+y/mzZmjj4Crto8Hd4ApZL9FQrBU
	z2t+7oqE8tKTEluXpe/Zo8uan1vMcKHAzZDIqpKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32a28055-c24d49f2-e18e-4d67-803d-6ea7b7d28087-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c77e1999fd68538efb908ef7ea46919bc8fafdea4b64b2e6c2d666c9c7643206
Date: Fri, 25 Feb 2022 20:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645821984
