Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E200A7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 13:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650634138;
	h=To:Subject:From:Message-Id:Date;
	bh=BH/KyDP2FQIie4DhVndxhHIO/Hm9IxdheIsc/YF7pJg=;
	b=KsFjBW/h3X2H/px2rmtF1tOwkoezN0Vq/IWspgGWIozDB3OdAZ25sVN1Z1I4ONXZ
	57YjffsPDzANS7fUEd8IbztL3h3Mexoacm0UvcaveueK8rq7YxCY4CYlyRCWq0L2UDi
	xCCgBO/uTeC4/E8ktuRFXbo0YURYCIpvQMgosZQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650634138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BH/KyDP2FQIie4DhVndxhHIO/Hm9IxdheIsc/YF7pJg=;
	b=U+TR9iBwfNQ4KdlMdlfbI32pleF3oRG1tAyC3r9m7Xe36QKPUGvTknu6pFBs/jtk
	JcuekYBouJ5T8K5BNl66/dZS6V9Y3EqfXrOa28wceXqVenbKyOqn8ztoL/58vhhS1lR
	c2xCtK6/2EiL9D4c/EDHlVjX0RkK3MW96jX5dcRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805176225d-b9f6b6b4-b07f-4b45-97cb-a901f5888f83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81708944b0d2ae8e97aa9bba1f7679bee0758954c45f8c548902e818faf203ec
Date: Fri, 22 Apr 2022 13:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650634138
