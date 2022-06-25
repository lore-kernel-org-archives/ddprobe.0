Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3149F7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656143812;
	h=To:Subject:From:Message-Id:Date;
	bh=8raZG2lPEJ1e+9SORj4xQ62ucyja/WZ6ocP8ABeuHFQ=;
	b=ezoPjIZK7IeFV7ZlpTfdAAKpRfWpnBb9f2+WKor4r+97m5itponY9ZN7W75DDaUo
	Ptg0IXByEWAXnamo1oDTXv/Krc/94A+V6PQDGjUOQ9rauE5waLt+XgP8UA/XcKZ2iYX
	4UaPdGVEzVliwqU7KjHaCJxVf2yqUJdHjO66GeuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656143812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8raZG2lPEJ1e+9SORj4xQ62ucyja/WZ6ocP8ABeuHFQ=;
	b=Lq6HR+jN/TB66b3DmU+YfjGCv4Phwtbs6Cr9miA6+NYfDum4FiZ/RK1N0cTUDYok
	QeNbiGJ+qM2TtEUc4vNMN/M9ea0PzFqwdJPBaKlhtfFblfpSTq1m4gcwhekQ28SrOjC
	4UtvKH5UbMdRlH53ThVtlUUoLXhtxIcAk1RYiXXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199dd16bb-183e9d85-fbcc-4a68-9042-6757a97dd8ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 347fcfa51eefb90290635fbd59c64529b98178fbdec5982612b8b4f010feb731
Date: Sat, 25 Jun 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656143812
