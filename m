Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768792F27
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645973785;
	h=To:Subject:From:Message-Id:Date;
	bh=cHfdXRO/uOjtNkFjF9iEDnboCzp+T+yalm6cPwaWebw=;
	b=J/84g01Ph7C8FcROMbEbdfwXkbrbE1hD6KY8rTKVAHR9W4TxQfIWL/Xhu5XlnxKU
	cdfH8CpJc6Wke0WHAu0DhzsFGng6Ut0HvnqGhDM101Io0ohOjoSrZKKnJdSKpbnLT9F
	052Tt3XFFE0sbsXlSzUWNi8Pgh4lTW3BuKlLN9dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645973785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHfdXRO/uOjtNkFjF9iEDnboCzp+T+yalm6cPwaWebw=;
	b=alIcpRwn1l55nzad6p/mRw1jjaElsiznzKrbVhUqiNjZAC11j2Dkrll8LXc0UuZP
	I2hiT20pLYbTwQUYJxbjaE3MFvYYxhCwuW2nE/muGQAxle9qM29nQj65kThKgiLeUHn
	0f0doCYLHclXyfUsDHAuX3NTjLVC377Bb3j8Hxf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3baec92f-e80abd7c-a4e6-4653-a416-08ee608b2d1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d05412652e94d65ecc09723726e5b8294ddc22235d665885de0b240eac37eec6
Date: Sun, 27 Feb 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645973784
