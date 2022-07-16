Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC2362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657957012;
	h=To:Subject:From:Message-Id:Date;
	bh=6PQH17qUpm8tMLZ3uS8MaCS2ZITT/RFeLtwAFoQEe+I=;
	b=i63++rRYBEEnelBOhgxC1GeM2puWJnyKeFJNO/WLHL3k/4kAj236gP95RVzlpURp
	UTi8W+ziLwRE3lfT9g7ftpOQeB+7DFymJlvrlPD3EMxex1lWjaSFDa4J7kYOpfSD9We
	lziIpx15yg86DCPkqRFIPSr4YODp6M84ri/dfbzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657957012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6PQH17qUpm8tMLZ3uS8MaCS2ZITT/RFeLtwAFoQEe+I=;
	b=YYAtQcQ7pvN3lqMXjkYOLf/uykYBdoEDg67coms0GSfshE9ezvclEln5AuRFbObN
	aJZ4DZTbKAZei7C8z73LMGiSX+Eofk1Yx7i9Xe9gf3CBq+QScx7QhbBupFq0GK3olZE
	8ypMgIdgbhfEwFXfwkUpijZH8ydVc7eCKtpH6Hl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205f05366-9c63d116-a473-43be-a7e8-fe5e518e0640-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5971466591480a7ac9ab276db322f3f24908b2d095dea376d14e10428d924d8
Date: Sat, 16 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657957012
