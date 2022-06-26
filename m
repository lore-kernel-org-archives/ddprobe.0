Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1018817FE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656238012;
	h=To:Subject:From:Message-Id:Date;
	bh=Gd2zYhC02cKM+cOT4Sqfx3zRWYt4rMgmyuh2oDLkNuk=;
	b=bI+FnNygUfIl4CBaNfE+YZk86fgIGecZjKnIj4U6EiemMNXN+GMnfeGvWOrg2lfc
	6dO/CtgvEb/Qi4G2g3EnuNEUc2xoO6U/b2Z4ih/GVSu5mNmYLqIFNRepZgqjiPZdFVN
	tOdSzihN1SgpYCvSW6W5DiXxKxdKjXBwXlwnjrcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656238012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gd2zYhC02cKM+cOT4Sqfx3zRWYt4rMgmyuh2oDLkNuk=;
	b=CST9xA6EiNALTEBlGLnyyTvH9q8KfE5wtInTIfA2hlRV5sflQ0aS0ft/UfT17Ufc
	tO5mvpdH7LX1Vh1pKCbuQEFV7J6m0EkT6QPXLv2tUw2XSe1INPGy/9Vf4fuWxjJZ5x6
	XVnvpBFTxSbZRXyXhvClek0o+1T6lPYY1lNNUl3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f7a7764-bb49c655-db4e-4255-8442-a0a0f65678b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 781a0d7040c634f5bfbcfd8fcb20446dd9a543cc1545ca5f61e872934e99afe9
Date: Sun, 26 Jun 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656238012
