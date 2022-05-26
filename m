Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B3E7C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 11:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653564660;
	h=To:Subject:From:Message-Id:Date;
	bh=2dDZA7SZeWl/d4ZfVVnZDMvJggBWzIKzZQztvSAIQmM=;
	b=aKExH7ZZ0v1rjymf5l8a+m5afGPNOEq6fdBpACR9OK2rTKrWszsCTFbWaDHra6qq
	0Cxnd1oszit1EtNFLD6gZhAr+KT6epsqCrGtXo/0vFkeaKkmurmA3qCRgdqnhLzI+Cx
	8+NhZCmYEi3JMoDk1sush0eLhn69xNnxM5LntR0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653564660;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2dDZA7SZeWl/d4ZfVVnZDMvJggBWzIKzZQztvSAIQmM=;
	b=A/z4mfw1PBVyi8goqTdrIHrkKfm9Kxx6gtUnY29Sbnq32bGwkyUEmsSPq81gAZLj
	VYpOqibJtRqT33YY8Zbc7LdR2VSj7OmCbeSB3M8nueMfWsyVABPshH6ftYDjWosSq4X
	NeN8zcL6Isp80sc5mRqysOkzDlES9i5VqbXx7foQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100225648-544aec9a-2b54-405f-bc35-d76dead58046-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3119aadfa1c160b4043d0466d836fd5a396157cebbc728979fb2f1b44054e28
Date: Thu, 26 May 2022 11:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653564659
