Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD83310ED
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645763485;
	h=To:Subject:From:Message-Id:Date;
	bh=cpqOanvJs8oQCZusLfPOTjW4EQttctU9cj7/47wiw/E=;
	b=HAFmHsFgu3OEEcyjvOzgCv3yKrVfo1DgGCRw2A8ANVmYlR2YYw7pmheTFpTmWVWA
	3P20KGFtrN6V5w71LgxxhtVnKagj9nwTtp62JHK+nNyXGnvOF2Eh0TRrvzh08dsyBKu
	mmXILRy4Z7b4hlw7Qv4595Pz7k5a9MB2oJPkJsQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645763485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cpqOanvJs8oQCZusLfPOTjW4EQttctU9cj7/47wiw/E=;
	b=etivuuaNA+HdyL9QYqIlIah2wa1/8+NvDFZ3/rmHbR0v7qTPpxM0iqZbr9amXyYj
	g7729UWZ3iRKxRb8EaoHH/H82e7smc/PdxzMVqSQ8Mo9jdrVTaGBzWOeePgXCWge7Jc
	N9HMqM78Egs/fPuKTCJjdsFM/A7sGxfTwGcUiy48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f25dc81-3c576407-103c-450a-96aa-3cf4e26a6c45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1af06dbe0c54955244716a99fb3d07b58cfad68a0e92634d0f8873ae242faabd
Date: Fri, 25 Feb 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645763484
