Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A977A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659949253;
	h=To:Subject:From:Message-Id:Date;
	bh=ZW0OWTc4HFWFFACK24hVnEwG9PlNzKxPDqkf8QjLL3s=;
	b=hT0YpWRnj3xt2UNHBNFmV5eFog9fVczT9qe/17Me6MGxHrOwlg7FkhBEpQL+o5dU
	Rr993/mBxeqAwYk+febkE2wHf9HsPsa2j/S0EzXsj2zwfiDGddtJPiY5osRK5JMZMfh
	Tdokv4CY6y9EU+uzNUO1GQ6darqZ8c+f3w6INAH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659949253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZW0OWTc4HFWFFACK24hVnEwG9PlNzKxPDqkf8QjLL3s=;
	b=ZqIgg7Kb+/DbD9As+lJpi8oE3sNi2B1oMikBaJoGvE10pRr7KKS7xfjvziQTckBe
	NFuGM6RFQY3wR6W1yxpcqrILCTad13ibLzFBerOuvyJplPDpLCj2W0dr8Awke9GiueA
	N9I7+W3p9H6qDYdWiElUT9wFpxFHlDaKq9kMaBCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827caf7ffe-e94ecc78-ecff-459e-a5a5-c5c6d64acd36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba1227ab89633412afc18d65f7ad49cd047c1f518af16e42c995df60fd47c39d
Date: Mon, 8 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659949252
