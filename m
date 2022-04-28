Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5EA20
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 06:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651128538;
	h=To:Subject:From:Message-Id:Date;
	bh=ctq31n9wOnoa+yhPxAMHxJZmU9qDe/VG3pl64TBYpZ4=;
	b=BSB9R4oe0p+ydHX83WBg1Jtq8vr0UOY2o4lUwFJDyBaYQkmwHtS4tpCQPm/pmh5Y
	OWU/zSjajxbnbnbxbRtfs+cMtDPBbSV5b6rzfCZGqD4qDlxYnQA57TswNbmAMI3LAnV
	URY+XCHHL07vedqKTA4f/TQw3pTTlEMgu+Em9WZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651128538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ctq31n9wOnoa+yhPxAMHxJZmU9qDe/VG3pl64TBYpZ4=;
	b=dA1sSaKW20JRc9HZYk+1uB8IXHGpmaRUZQIrJdgmx41DkJlzvrmF709Z2FF+NYzf
	o1liB+FcWb2Q6B8bQIlKlK7JOPR8mewv8cULTM0xBtuj+nj6XoqODt8p+PXUrMwbe2U
	/IKAFdjaRGNPCs9LGUBuSZ5GAHM59snZFY18M3W8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806eee1468-fce11c91-d8b8-4667-ae07-749695cae67e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dc0f25a40a75a242c7e77ff6972dff664fb03c01353a9565480ead0864849e1
Date: Thu, 28 Apr 2022 06:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651128538
