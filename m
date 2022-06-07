Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B687C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 06:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654584719;
	h=To:Subject:From:Message-Id:Date;
	bh=zBXPHAkt8h3jjuS0x7+ggZXoHmhyLXF7sVZiu7USqAQ=;
	b=Iy9BZ7bPLerKNh6Se7fn+BwK3zxmmInrV36mRGevmBdUTkihZjS6a6Vt6X9gshXY
	LCKJiEmjpKi1Rqza4udw6WuMrA/imWDTLlx80BTYWLqnzeD00HqMuHklCTAN1oQf6Rl
	/nut8l8H99VYMMG1CHhCf8DMqaJELsdvaD5uy7zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654584719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBXPHAkt8h3jjuS0x7+ggZXoHmhyLXF7sVZiu7USqAQ=;
	b=GNr88r0v4KfH49ze9K1XCZ1vDZWddbMHl/eGBwCyaQ01ZeZG2VPdTftteZ70iyYo
	zPbTfIgDTonQ2zUNRgonlrI3L3nlVD+hcCW97z0/nZ8cAGlHjwiPMK6xufIpI8LKol3
	vnKTb15lAdq/+YQ+Xso7v20w7T9RQXx3Tr2jaPDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813cef3796-24ff4a4a-47bf-4825-9879-4453d15af9ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd4af1538672e080d5bc5372f11debd573cd6d8258b6aff968667394501eae05
Date: Tue, 7 Jun 2022 06:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654584719
