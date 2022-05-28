Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4CB7F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 19:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653767339;
	h=To:Subject:From:Message-Id:Date;
	bh=NOq2sC9lcTDrLWOFYtf/t8UOL2TczwMounRUZS91t5g=;
	b=GJzN0DP4bBh4dO0ot7G9u0Q/0Y1QsfSVc65sMquw8iYywSax15sfEnmI/DVE478C
	yXA3C4YCYesuVtiB4+nbVck7C/bippQrNj/TgLgYUvYKXgXOSUbZ9yoTxnEINY8jMyV
	G1sI0LI8SDRAbQVAhvovoanF9f7b2n9WAGoDHHfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653767339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NOq2sC9lcTDrLWOFYtf/t8UOL2TczwMounRUZS91t5g=;
	b=Dg9NFyrBoLFV5px+tl/5pRblYc1GerVLFAcluk+IFQu0SD5uw0TqF6v3eMlIbpsO
	Sc1j3W6/z26H24WjbTxTKMg0y3GrarrlOYLqXkVpfeNidcDmSajySi/Xj6DZZecVgU4
	XCBx/xb4ac3GbO/nk/SBoXO0ui+If+soAy6gAgsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810c36fd0d-2206d043-3098-43b8-8b94-a51d0ba07277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5954c5087f1b124dd652bdf8d55e98ac158b1af5b860d159b958427ed8aa7117
Date: Sat, 28 May 2022 19:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653767339
