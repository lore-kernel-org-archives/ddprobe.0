Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B086290C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660911052;
	h=To:Subject:From:Message-Id:Date;
	bh=4aqPNhHQesU+x2Q8XzMjTtjxHQTLFw3VJPhiL4r6a54=;
	b=J5Z9efAMewYLhhwe9B2T8u1lyPH5z/irb1uasbBkmuAv2zyI1ufDXQ70OcCcUVBD
	w8lCc7mBvFLKHzWdauLxcCetSKy4xoQv+lr9IUwggMJfjNWdx02V5XFXbmL0jAx1wLc
	CuUWWWDOlJVJcsiPsDeUst9/eXaPg8liwYctxTdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660911052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aqPNhHQesU+x2Q8XzMjTtjxHQTLFw3VJPhiL4r6a54=;
	b=K2DxkB/Zi6bt3pnjWXDs5Minjv2M8gM1ak/PgRUjT0iUVKA6K0wvvxIBuXWozP/c
	mUHseeJ20Kh4TS6iXgNWwAq+YmfZ1eZGJy9OMn5fTXwumEDCDSwA7IolBfyl2tSuqxV
	u+0cj9qn/D4Ntejyx1ONLi8+qxd8ocwOHSC9Nqp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b603672e-45849e9a-2ecc-406b-901f-16f1118deee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6decbff9823ca62b89ce0eae6a64b569210a2f7b077d77b79a5f808361e9709b
Date: Fri, 19 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660911052
