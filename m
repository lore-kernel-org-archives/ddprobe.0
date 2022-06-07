Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39428FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 15:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654616339;
	h=To:Subject:From:Message-Id:Date;
	bh=VwQJx+/85ifhOhJbnTO6DwIc9enm0k1ZfQsmx69VmlA=;
	b=MR2rNp5YO/Iw7C5+2UdBPcjjJltaGZD1e24yQgFf0NhmQkmhAL8T/oH+DerBn7+/
	Fcs15hdl7q6td6YYTTF7zCk0Bu4725NHclp/zCitPhBHJHWQdkL7RrSfaTW7VyA0aJ/
	5h2q0o/XzEyGdhE7QgLXutqMC7e3AAdC14gKgsc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654616339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VwQJx+/85ifhOhJbnTO6DwIc9enm0k1ZfQsmx69VmlA=;
	b=BkD+CxTdrlGQ/ITfVNIabl625Z23dUr+7jwcCb2pzY2GoK+7EdiWFQc+J/feljR1
	pDvgRTjvygQbJV21J/E7/ovQU/uW6FZG4IDdhUgl0roNZB62HANAABPPbbXX7QszFsW
	VQxEGZib92DipcLbUXk6H1TS6QIOD23vcdcfdUA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ed1b353-89dc4fd2-c572-4fb8-8d1c-56b45e967b99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff2140f1a692e544c1244d8834deb9b57c85d756820046dbae1571329d817ce4
Date: Tue, 7 Jun 2022 15:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654616339
