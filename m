Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870C15A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 03:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654572419;
	h=To:Subject:From:Message-Id:Date;
	bh=ykRTpTHtohprrXOX9yc1TGK1VeGhxs8u6oK8+yM+AMQ=;
	b=YJ7x8sMt/2URm5tFRINJCjldg5144U0yFjw1Fn5wX1+a7KCMYmTn7O+g09tzV46n
	zkTOaE9os+4Vac9Q3Fu2Sk/SiNfPzBtmy3oZgpEmjj8GWKQKrNR+OKoj5b+ttqeqnxS
	9TQwowR2fS5dIVfc6RZ4zoXJS7+173rvganjnO1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654572419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ykRTpTHtohprrXOX9yc1TGK1VeGhxs8u6oK8+yM+AMQ=;
	b=f6L89JnCiq9hsG4AfmYk+fI/ENX9MuPdAoyOi8Ot0xc4LKUobnaVtxGtsdwkb/4P
	gtHB1feOLVIyPm3fu8Xyb3OqVSe2O+ZQZQ75ee6qCt4G1sQ4uIxIoSEFvM1d9iFgJ22
	4ZmOQ0nzIBLIBgFgLlUDwxTU42jr2+hYg0+3BO4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c3388e3-e3f3e7e4-25ca-46d5-aabd-f553d3112fa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 126b40127a89ad62c4273e54a702839122ac0aa63034a3918b840b33dc10801a
Date: Tue, 7 Jun 2022 03:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654572419
